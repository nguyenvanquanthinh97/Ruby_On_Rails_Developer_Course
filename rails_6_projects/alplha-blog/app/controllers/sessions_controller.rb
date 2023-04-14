class SessionsController < ApplicationController
  def signin
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = "Logged in successfully"
      redirect_to user_path(user)
    else
      flash[:alert] = "There was somethign wrong with your login details"
      render "signin"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to signin_path
  end
end