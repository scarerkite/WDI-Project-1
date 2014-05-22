class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.boolean :finished
      t.boolean :declined
      t.integer :winner_id
      t.integer :loser_id
      t.boolean :draw
      t.integer :player_1_id
      t.integer :player_2_id
      t.timestamps
    end
  end
end
