class Move < ActiveRecord::Base
  attr_accessible :move_no, :placement, :game_id, :user_id

  belongs_to :user
  belongs_to :game 
end
