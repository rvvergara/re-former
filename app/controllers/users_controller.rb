class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(username:params[:username],email:params[:email],password:params[:password])
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end