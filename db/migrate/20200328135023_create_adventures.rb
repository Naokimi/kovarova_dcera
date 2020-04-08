class CreateAdventures < ActiveRecord::Migration[6.0]
  def change
    create_table :adventures do |t|
      t.float :current_chapter, default: 1.1
      t.string :load_code
      t.string :email
      t.boolean :test
      t.integer :player_amount

      t.timestamps
    end
  end
end
