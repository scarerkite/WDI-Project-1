class AddPlayer1ToGames < ActiveRecord::Migration
  def change
    add_column :games, :player1, :integer
  end
end
