class AddPlayer2ToGames < ActiveRecord::Migration
  def change
    add_column :games, :player2, :integer
  end
end
