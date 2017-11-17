class CreateCharacterSizeCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :character_size_categories do |t|
      t.integer :character_id, null: false
      t.integer :size_category_id, null: false

      t.timestamps
    end
  end
end
