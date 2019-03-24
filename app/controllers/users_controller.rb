class UsersController < ApplicationController

  before_action :set_user, only: [:edit, :update]

  def show
  end

  def edit
  end

  def update
    @user.update(update_params)
    if @user.update(update_params)
      redirect_to user_path(current_user)
    else
      render 'edit'
    end
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def update_params
    params.require(:user).permit(:nickname, :profile)
  end

end
