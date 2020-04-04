class CreatePlayerCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :player_characters do |t|
      t.string :name
      t.string :path
      t.string :race
      t.string :player_name
      t.references :adventure, null: false, foreign_key: true

      t.timestamps
    end
  end
end
