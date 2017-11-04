class AddRaceNameToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :race_name, :string, null: false,  default: "Human"
  end
end
