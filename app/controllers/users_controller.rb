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
    @c_wins = Game.where(player2: 1, player1: params[:id], win: params[:id]).count
    @c_losses = Game.where(player2: 1, player1: params[:id], lose: params[:id]).count
    @c_draws = Game.where(player2: 1, player1: params[:id], draw: true).count
    @wins = Game.where(win: params[:id]).count
    @losses = Game.where(lose: params[:id]).count
    @draw = Game.where("(player1 = #{params[:id]} OR player2 = #{params[:id]}) AND draw= true").count
    @u_wins = @wins - @c_wins
    @u_losses = @losses - @c_losses
    @u_draws = @draw - @c_draws


    @partial_name = "overview"
    render :show
  end

  def opponents
    @opponents = User.opponents_of_user(current_user)
    @games = Game.all
    # Create games in progress method.

    @opponents.each do |opponent|
      @games.detect do |game|
        Game.game_in_progress(game).where("(player1 = current_user.id OR player2 = current_user.id) AND (player1 = opponent.id OR player2 = opponent.id)")       
      end
    end
    @partial_name = "opponents"
    render :show
  end

  def challenges
    Game.all.each do |game|
      @game = game.where(declined: nil, player2: params[:id])
      @opp = User.find_by_id(@game.player1)
      @opponent = @opp.user_name
    end
    @partial_name = "challenges"
    render :show
  end

  def current_user_game
    Game.all.each do |game|
      if game.player1 = params[:id] || game.player2 = params[:id]
      end
    end
  end


end