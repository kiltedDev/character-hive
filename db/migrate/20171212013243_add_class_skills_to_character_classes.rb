class AddClassSkillsToCharacterClasses < ActiveRecord::Migration[5.1]
  def change
    add_column :character_classes, :acrobatics, :boolean, null: false, default: false
    add_column :character_classes, :bluff, :boolean, null: false, default: false
    add_column :character_classes, :climb, :boolean, null: false, default: false
    add_column :character_classes, :diplomacy, :boolean, null: false, default: false
    add_column :character_classes, :disable_device, :boolean, null: false, default: false
    add_column :character_classes, :disguise, :boolean, null: false, default: false
    add_column :character_classes, :escape_artist, :boolean, null: false, default: false
    add_column :character_classes, :fly, :boolean, null: false, default: false
    add_column :character_classes, :heal, :boolean, null: false, default: false
    add_column :character_classes, :intimidate, :boolean, null: false, default: false
    add_column :character_classes, :knowledge_arcana, :boolean, null: false, default: false
    add_column :character_classes, :knowledge_dungeoneering, :boolean, null: false, default: false
    add_column :character_classes, :knowledge_local, :boolean, null: false, default: false
    add_column :character_classes, :knowledge_nature, :boolean, null: false, default: false
    add_column :character_classes, :knowledge_planes, :boolean, null: false, default: false
    add_column :character_classes, :knowledge_religion, :boolean, null: false, default: false
    add_column :character_classes, :knowledge_history, :boolean, null: false, default: false
    add_column :character_classes, :knowledge_engineering, :boolean, null: false, default: false
    add_column :character_classes, :knowledge_geography, :boolean, null: false, default: false
    add_column :character_classes, :knowledge_nobility, :boolean, null: false, default: false
    add_column :character_classes, :perception, :boolean, null: false, default: false
    add_column :character_classes, :ride, :boolean, null: false, default: false
    add_column :character_classes, :sense_motive, :boolean, null: false, default: false
    add_column :character_classes, :spellcraft, :boolean, null: false, default: false
    add_column :character_classes, :stealth, :boolean, null: false, default: false
    add_column :character_classes, :survival, :boolean, null: false, default: false
    add_column :character_classes, :swim, :boolean, null: false, default: false
    add_column :character_classes, :use_magic_device, :boolean, null: false, default: false
    add_column :character_classes, :appraise, :boolean, null: false, default: false
    add_column :character_classes, :handle_animal, :boolean, null: false, default: false
    add_column :character_classes, :linguistics, :boolean, null: false, default: false
    add_column :character_classes, :sleight_of_hand, :boolean, null: false, default: false
    add_column :character_classes, :profession, :boolean, null: false, default: false
    add_column :character_classes, :craft, :boolean, null: false, default: false

  end
end
