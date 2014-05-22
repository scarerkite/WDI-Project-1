class Game < ActiveRecord::Base

  WIN_SETS = [%w[1-1 1-2 1-3], %w[2-1 2-2 2-3], %w[3-1 3-2 3-3], %w[1-1 2-1 3-1], %w[1-2 2-2 3-2], %w[1-3 2-3 3-3], %w[1-1 2-2 3-3], %w[3-1 2-2 1-3]].map(&:to_set)

  attr_accessible :declined, :draw, :finished, :loser, :winner, :player_1, :player_2

  has_many :moves
  has_many :users, through: :moves

  belongs_to :player_1, class_name: "User"
  belongs_to :player_2, class_name: "User"

  belongs_to :winner, class_name: "User"
  belongs_to :loser, class_name: "User"

  def self.in_progress
    where(finished: false).all
  end

  def self.game_won?(game)
    move_set = moves.where(user_id: @current_user, game_id: game.id).map(&:placement).to_set
    WIN_SETS.any? do |win_set|
      move_set.superset? win_set
    end
  end
  

end
