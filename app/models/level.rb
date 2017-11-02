class Level < ApplicationRecord
  belongs_to :character
  belongs_to :character_class

  validates_presence_of :level_number
  validates_inclusion_of :level_number, in: [*1..20]
end
