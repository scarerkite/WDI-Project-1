class UsersController < ApplicationController
  def index
  #   @users = User.all
  end

  def new
    @user = User.new
  end

  # User sign up
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to login_path
    else
      render :new
    end
  end

  # Access overview, opponents and challenges
  def show
    @user = User.find(params[:id])
    #authorize! :show, @user
  end


end