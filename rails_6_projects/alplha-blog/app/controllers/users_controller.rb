class UsersController < ApplicationController
  def signup
    @user = User.new
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @articles = @user.articles
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:username, :email, :password))
      byebug
      flash[:notice] = "Profile updated"
      redirect_to articles_path
    else
      render 'edit'
    end
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