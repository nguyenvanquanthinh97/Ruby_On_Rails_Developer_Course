class UsersController < ApplicationController
  before_action :set_user, only: [:signup, :edit, :show, :update]
  before_action :require_user, only: [:edit, :update]
  before_action :require_same_user, only [:edit, :update]

  def signup
  end

  def index
    @users = User.paginate(page: params[:page] || 1, per_page: 5)
  end

  def edit
  end

  def show
    @articles = @user.articles.paginate(page: params[:page] || 1, per_page: 5)
  end

  def update
    if @user.update(user_params)
      byebug
      flash[:notice] = "Profile updated"
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the Alpha Blog #{@user.username}, you have successfully signed up"
      redirect_to articles_path
    else
      render 'signup'
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def require_same_user
    if current_user != @user
      flash[:alert] = "You can only edit your own account"
      redirect_to user_path(@user)
    end
  end
end