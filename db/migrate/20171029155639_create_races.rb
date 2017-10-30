class CreateRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :races do |t|
      t.string :name, null: false
      t.string :vision, null: false, default: "Normal"
      t.boolean :wild, null: false, default: false
      t.integer :strength, null: false, default: 0
      t.integer :constitution, null: false, default: 0
      t.integer :dexterity, null: false, default: 0
      t.integer :intelligence, null: false, default: 0
      t.integer :wisdom, null: false, default: 0
      t.integer :charisma, null: false, default: 0

      t.timestamps
    end

    add_index :races, :name, unique: true
  end
end
