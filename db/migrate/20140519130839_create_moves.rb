class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :move_no
      t.string :placement
      t.references :user
      t.references :game

      t.timestamps
    end
    add_index :moves, :user_id
    add_index :moves, :game_id
  end
end
