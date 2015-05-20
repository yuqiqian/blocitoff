class UsersController < ApplicationController

  def index
  end

  def show
    @user = current_user
    @items = @user.items
  end
  
  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirnmation)
  end
end
