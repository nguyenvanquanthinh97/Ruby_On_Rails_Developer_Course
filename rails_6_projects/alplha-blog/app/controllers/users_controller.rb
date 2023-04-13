class UsersController < ApplicationController
  def signup
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :email, :password))
    if @user.save
      flash[:notice] = "Welcome to the Alpha Blog #{@user.username}, you have successfully signed up"
      redirect_to articles_path
    else
      render 'signup'
    end
  end
end