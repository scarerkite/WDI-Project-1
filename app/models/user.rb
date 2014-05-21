class User < ActiveRecord::Base

  has_secure_password
  validates :email, presence: true, uniqueness: true
  attr_accessible :email, :password, :password_confirmation, :user_name

  has_many :moves
  has_many :users, through: :moves

  def self.opponents_of_user(user)
    User.where("id != :user_id", :user_id => user.id).all
  end

  

end
