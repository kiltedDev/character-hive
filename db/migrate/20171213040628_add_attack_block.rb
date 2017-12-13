class AddAttackBlock < ActiveRecord::Migration[5.1]
  def change
    create_table :attack_blocks do |t|
      t.string :attack_name, null: false
      t.integer :misc_attack_bonus
      t.integer :misc_damage_bonus
      t.string :damage_daice, null: false
      t.integer :crit_range, null: false
      t.integer :crit_multiplier, null: false
      t.string :attack_type, null: false
      t.string :hit_and_damage_mods, null: false

      t.timestamps
    end
  end
end
