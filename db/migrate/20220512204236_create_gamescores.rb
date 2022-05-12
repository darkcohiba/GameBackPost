class CreateGamescores < ActiveRecord::Migration[7.0]
  def change
    create_table :gamescores do |t|
      t.belongs_to :game, null: false, foreign_key: true
      t.belongs_to :score, null: false, foreign_key: true
      t.timestamps
    end
  end
end
