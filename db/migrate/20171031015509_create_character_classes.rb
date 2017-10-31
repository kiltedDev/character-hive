class CreateCharacterClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :character_classes do |t|
      t.string :name, null: false
      t.integer :hit_die, null: false
      t.string :bab, null: false
      t.integer :base_skills, null: false
      t.boolean :caster, null: false

      t.timestamps
    end

    add_index :character_classes, :name, unique: true
  end
end
