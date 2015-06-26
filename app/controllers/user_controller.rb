class UserController < ApplicationController
  def create
  	@user = User.new(user_params)
  	if @user.save
  end

  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
