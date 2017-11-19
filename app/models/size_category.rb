class SizeCategory < ApplicationRecord
  has_many :character_size_categories
  has_many :characters, through: :character_size_categories

  validates_presence_of :creature_size
  validates_inclusion_of :creature_size, in: ["Fine", "Diminutive", "Tiny", "Small", "Medium", "Large", "Huge", "Gargantuan", "Colossal", "Large (Tall)", "Huge (Tall)", "Gargantuan (Tall)", "Colossal (Tall)"]
  validates_presence_of :size_modifier
  validates_presence_of :special_size_modifier
  validates_presence_of :fly_modifier
  validates_presence_of :stealth_modifier
  validates_presence_of :base_reach

end
