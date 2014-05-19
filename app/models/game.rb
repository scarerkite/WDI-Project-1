class Game < ActiveRecord::Base
  attr_accessible :declined, :draw, :finished, :lose, :win

  has_many :moves
  has_many :users, through: :moves
end
