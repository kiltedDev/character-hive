class SizeCategory < ApplicationRecord
  has_many :character_size_categories
  has_many :characters, through: :character_size_categories

  validates_presence_of :creature_size
  validates_inclusion_of :creature_size, in: ["Fine", "Diminutive", "Tiny", "Small", "Medium", "Large", "Huge", "Gargantuan", "Colossal", "Large (Tall)", "Huge (Tall)", "Gargantuan (Tall)", "Colossal (Tall)"]
  validates_presence_of :size_modifier
  validates_inclusion_of :size_modifier, in: [8,4,2,1,0,-1,-2,-4,-8]
  validates_presence_of :special_size_modifier
  validates_inclusion_of :special_size_modifier, in: [-8,-4,-2,-1,0,1,2,4,8]
  validates_presence_of :fly_modifier
  validates_inclusion_of :fly_modifier, in: [-8,-6,-4,-2,0,2,4,6,8]
  validates_presence_of :stealth_modifier
  validates_inclusion_of :stealth_modifier, in: [-16,-12,-8,-4,0,4,8,12,16]
  validates_presence_of :base_reach
  validates_inclusion_of :base_reach, in: [0,5,10,15,20,30]

end
