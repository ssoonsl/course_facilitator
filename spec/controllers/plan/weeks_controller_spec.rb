require 'rails_helper'

RSpec.describe Plan::WeeksController, type: :controller do

  context 'when not signed in as admin' do

    it { expect(get(:index)).to redirect_to(new_admin_session_path) }
    it { expect(get(:show, id: 1)).to redirect_to(new_admin_session_path) }

  end

  context 'when signed in as admin' do

    let(:admin) { create(:admin) }
    before { sign_in admin }

    describe 'GET #index' do

      let(:weeks) { create_list(:week, 3) }

      before { get :index }

      it { expect(assigns(:weeks)).to eq(weeks) }

    end

    describe 'GET #show' do

      let(:week) { create(:week) }
      let(:learning_outcomes) { create_list(:learning_outcome, 3) }

      before { get :show, params: { id: week } }

      it { expect(assigns(:week)).to eq(week) }
      it { expect(assigns(:learning_outcomes)).to eq(learning_outcomes) }

    end

  end

end
