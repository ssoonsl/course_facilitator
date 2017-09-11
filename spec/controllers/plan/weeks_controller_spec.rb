require 'rails_helper'

RSpec.describe Plan::WeeksController, type: :controller do

  context 'when not signed in as instructor' do

    it { expect(get(:index)).to redirect_to(new_instructor_session_path) }

  end

  context 'when signed in as instructor' do

    let(:instructor) { create(:instructor) }
    before { sign_in instructor }

    describe 'GET #index' do

      let(:weeks) { create_list(:week, 3) }

      before { get :index }

      it { expect(assigns(:weeks)).to eq(weeks) }

    end

  end

end
