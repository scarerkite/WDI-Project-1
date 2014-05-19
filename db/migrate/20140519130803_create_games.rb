class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.boolean :finished
      t.boolean :declined
      t.integer :win
      t.integer :lose
      t.boolean :draw

      t.timestamps
    end
  end
end
