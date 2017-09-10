require 'rails_helper'

RSpec.describe Admin::BatchesController, type: :controller do

  context 'when not signed in as instructor' do

    it { expect(get(:index)).to redirect_to(new_instructor_session_path) }

  end

  context 'when signed in as instructor' do

    let(:instructor) { create(:instructor) }
    before { sign_in instructor }

    describe 'GET #index' do

      let(:batches) { create_list(:batch, 3) }

      before { get :index }

      it { expect(assigns(:batches)).to eq(batches) }

    end

  end

end
