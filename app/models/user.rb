class User < ActiveRecord::Base

  has_secure_password
  validates :email, presence: true, uniqueness: true
  attr_accessible :email, :password, :password_confirmation, :user_name

  has_many :moves
  has_many :users, through: :moves

  has_many :games_as_player_1, class_name: "Game", foreign_key: "player_1"
  has_many :games_as_player_2, class_name: "Game", foreign_key: "player_2"

  has_many :won_games, class_name: "Game", foreign_key: "winner_id"
  has_many :lost_games, class_name: "Game", foreign_key: "loser_id"

  def self.opponents_of_user(excluded_user)
    where("id != ?", excluded_user.id).all
  end

  

end
