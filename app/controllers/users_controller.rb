class UsersController < ApplicationController

  def new
    reset_session
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
  end

  private

  def user_params
		params.require(:user).permit(:name, :age, :email, :password, :password_confirmation)
  end

end
