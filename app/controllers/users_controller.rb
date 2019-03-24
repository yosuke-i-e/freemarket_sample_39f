class UsersController < ApplicationController

  before_action :set_user, only: [:edit, :update]

  def show
  end

  def edit
  end

  def update
    @user.update!(params.require(:user).permit(:nickname, :profile))
    redirect_to edit_user_path
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

end
