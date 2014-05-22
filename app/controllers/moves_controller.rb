class MovesController < ApplicationController

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

    if game_won?(move_set)
      @game.finished = true
      @winner_id = current_user.id
    end

    redirect_to game_path(@game)
  end

end