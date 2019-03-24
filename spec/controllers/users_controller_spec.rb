require 'rails_helper'

describe UsersController do
  let(:user) { create(:user) }

  context 'log in' do
    before do
      login user
    end

    describe '#show' do
      before do
        get :show, params: { id: 1 }
      end

      it 'renders show' do
        expect(response).to render_template :show
      end

    end

    describe '#edit' do

      it "assigns the requested user to @user" do
        get :edit, params: { id: user }
        expect(assigns(:user)).to eq user
      end
    end

    describe '#update' do
      let(:param) do
        {
          id: user.id,
          user: {
            nickname: "nickname",
            profile: "profile"
          }
        }
      end

      it "@user can update" do
        patch :update, params: param
        user.reload
        expect(user.nickname).to eq "nickname"
      end
    end

  end

  context 'not log in' do

    describe '#show' do
      it 'redirects to new_user_session_path' do
        get :show, params: { id: user }
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    describe '#edit' do
      it 'redirects to new_user_session_path' do
        get :edit, params: { id: user }
        expect(response).to redirect_to(new_user_session_path)
      end
    end

  end
end
