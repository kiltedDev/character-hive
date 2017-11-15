class CreateDetailsPanels < ActiveRecord::Migration[5.1]
  def change
    create_table :details_panels do |t|
      t.string :player_name, null: false
      t.string :campaign
      t.string :gender
      t.string :alignment, null: false

      t.timestamps
    end
  end
end
