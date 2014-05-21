class MovesController < ApplicationController

  # def new
  #   @move = Move.new    
  # end

  def create
    @game = Game.find params[:id]
    @user_id = current_user
    @move = Move.new
    @last_move_in_game = Move.where(game_id: @game).last

    if @last_move_in_game
      new_move = @last_move_in_game.move_no + 1
    else
      new_move = 1
    end

    @move.move_no = new_move
    @move.placement = params[:placement]
    @move.user_id = current_user.id
    @move.game_id = @game.id   

    @move.save!
    redirect_to game_path(@game)
    # placement - comes from click on link
    # move_no - is there already moves assigned to that game? find last, + 1. If no, 1
    # user_id - current_user
  end

end