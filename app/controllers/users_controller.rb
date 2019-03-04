class UsersController < ApplicationController

  def show
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    @user.update(params.require(:user).permit(:nickname, :profile))
    redirect_to edit_user_path
  end

end
