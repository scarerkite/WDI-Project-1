class UsersController < ApplicationController
  before_filter :authenticate, only: :show

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
    @user = current_user
    #authorize! :show, @user
  end

  def overview


  end

  def opponents

  end

  def challenges


  end


end