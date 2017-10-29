class CreateStatValues < ActiveRecord::Migration[5.1]
  def change
    create_table :stat_values do |t|
      t.integer :name, null: false
      t.integer :value, null: false

      t.timestamps
    end
  end
end
