class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :game
      t.belongs_to :user
      t.integer :score
      t.timestamps
    end
  end
end