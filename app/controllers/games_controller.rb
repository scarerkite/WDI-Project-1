class GamesController < ApplicationController
  def index
    #@games = Game.all
  end

  # Called when a user starts a game with computer or user
  # def new
  #   @game = Game.new
  # end

  # The game being played
  def show
    @game = Game.find params[:id]
    @moves = @game.moves
  end

  # 
  def create
    @game = Game.new
    @game.player_1 = current_user
    @game.player_2 = User.find(params[:player_2])
    @game.finished = false
    @game.save

    redirect_to @game
  end

  # Used to edit the game fields (e.g. win, lose etc.)
  def edit
    @game = Game.find(params[:id])
  end

  # When a user declines a challenge - the finished field is set to true.
  # Can no longer be accessed by anyone.
  def decline
    @game = Game.find(params[:id])
    @game.declined = true
    @game.finished = true
    redirect_to challenges_user_path(current_user)
  end

  def accept
    @game = Game.find(params[:id])
    @game.declined = false
    redirect_to game_path(@game)
  end

end