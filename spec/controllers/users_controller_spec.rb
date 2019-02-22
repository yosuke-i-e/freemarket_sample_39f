require 'rails_helper'

describe UsersController do
  let(:user) { create(:user) }

  describe '#show' do
    context 'log in' do
      before do
        login user
        get :show, params: { id: 1 }
      end

      it 'renders show' do
        expect(response).to render_template :show
      end

    end

    context 'not log in' do
      before do
        get :show, params: { id: 1 }
      end

      it 'redirects to new_user_session_path' do
        expect(response).to redirect_to(new_user_session_path)
      end

    end
  end
end
