class SessionsController < ApplicationController
  def new
  end

  # Sign in
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      # user is authenticated
      session[:user_id] = user.id
      redirect_to root_path, notice: "You have successfully signed in"
    else
      # wrong credentials
      flash.now[:alert] = "Invalid Login Credentials"
      render :new
    end
  end

  # Sign out
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end