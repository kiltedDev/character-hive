class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :character_class, null: false
      t.integer :level, null: false
      t.integer :user_id, null: false
      t.integer :race_id, null: false

      t.timestamps
    end
  end
end
