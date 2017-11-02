class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.integer :character_id, null: false
      t.integer :character_class_id, null: false
      t.integer :level_number, null: false
      
      t.timestamps
    end
  end
end
