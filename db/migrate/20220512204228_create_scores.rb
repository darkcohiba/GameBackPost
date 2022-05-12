class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.integer :score
      t.string :game
      t.timestamps
    end
  end
end
