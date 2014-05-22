class Move < ActiveRecord::Base

  
  
  attr_accessible :move_no, :placement, :game, :game_id, :user, :user_id

  belongs_to :user
  belongs_to :game 

  validates_uniqueness_of :move_no, scope: :game_id

  
end
