class Game < ActiveRecord::Base
  attr_accessible :declined, :draw, :finished, :lose, :win, :player1, :player2

  has_many :moves
  has_many :users, through: :moves
end
