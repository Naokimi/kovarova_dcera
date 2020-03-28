class CreateNonPlayerCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :non_player_characters do |t|
      t.string :name
      t.integer :max_hp
      t.integer :hp_left
      t.references :adventure, null: false, foreign_key: true

      t.timestamps
    end
  end
end
