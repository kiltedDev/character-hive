class CreateSizeCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :size_categories do |t|
      t.string :creature_size, null: false
      t.integer :size_modifier, null: false
      t.integer :special_size_modifier, null: false
      t.integer :fly_modifier, null: false
      t.integer :stealth_modifier, null: false
      t.integer :base_reach, null: false

      t.timestamps
    end
  end
end
