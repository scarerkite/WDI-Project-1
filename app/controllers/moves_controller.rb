class MovesController < ApplicationController

  def new
    @game = Game.find params[:game_id]
    @user_id = current_user
    @move = Move.new    
  end

  def create
    @move = Move.new
    # game_id
    # placement - comes from click on link
    # move_no - is there already moves assigned to that game? find last, + 1. If no, 1
    # user_id - current_user
  end

end