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
    @c_wins = Game.where(player_2_id: 1, player_1_id: current_user.id, winner_id: current_user.id).count
    @c_losses = Game.where(player_2_id: 1, player_1_id: current_user.id, loser_id: current_user.id).count
    @c_draws = Game.where(player_2_id: 1, player_1_id: current_user.id, draw: true).count
    @wins = Game.where(winner_id: current_user.id).count
    @losses = Game.where(loser_id: current_user.id).count
    @draw = Game.where("(player_1_id = #{current_user.id} OR player_2_id = #{current_user.id}) AND draw= true").count
    @u_wins = @wins - @c_wins
    @u_losses = @losses - @c_losses
    @u_draws = @draw - @c_draws


    @partial_name = "overview"
    render :show
  end

  def opponents
    opponents = User.opponents_of_user(current_user)
    games = Game.in_progress

    # Create games in progress method.

    @opponents = opponents.each_with_object({}) do |opponent, hash|
      shared_game = games.detect do |game|
        cu_game = game.player_1_id == current_user.id && game.player_2_id == opponent.id
        op_game = game.player_1_id == opponent.id && game.player_2_id == current_user.id
        cu_game || op_game
      end
      hash[opponent] = shared_game
    end

    @partial_name = "opponents"
    render :show
  end

  def challenges
    Game.all.each do |game|
      @game = game.where(declined: nil, player_2_id: params[:id])
      @opp = User.find(@game.player_1_id)
      @opponent = @opp.user_name
    end
    @partial_name = "challenges"
    render :show
  end

  # def current_user_game
  #   Game.all.each do |game|
  #     if game.player_1_id = params[:id] || game.player_2_id = params[:id]
  #     end
  #   end
  # end


end