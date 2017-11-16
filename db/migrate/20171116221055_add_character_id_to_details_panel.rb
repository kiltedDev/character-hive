class AddCharacterIdToDetailsPanel < ActiveRecord::Migration[5.1]
  def change
    add_column :details_panels, :character_id, :integer, null: false

  end
end
