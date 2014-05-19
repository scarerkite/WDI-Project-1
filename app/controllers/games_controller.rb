class GamesController < ApplicationController
  def index
    #@games = Game.all
  end

  # Called when a user starts a game with computer or user
  def new
    @game = Game.new
  end

  # The game being played
  def show
    @game = Game.find params[:id]
  end

  # Finished is the only field filled in
  def create
    @game = Game.create(
      finished: false
    )

    redirect_to "/games/#{@game.id}"
  end

  # Used to edit the game fields (e.g. win, lose etc.)
  def edit
    @game = Game.find(params[:id])
  end

  # When a user declines a challenge - the finished field is set to true.
  # Can no longer be accessed by anyone.
  def destroy
    @game = Game.find(params[:id])
    @game.declined = true
    @game.finished = true

  end

end