class Race < ApplicationRecord
  has_many :characters

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :vision
  validates_inclusion_of :strength,     in: [-4, -2, 0, 2, 4]
  validates_inclusion_of :constitution, in: [-4, -2, 0, 2, 4]
  validates_inclusion_of :dexterity,    in: [-4, -2, 0, 2, 4]
  validates_inclusion_of :intelligence, in: [-4, -2, 0, 2, 4]
  validates_inclusion_of :wisdom,       in: [-4, -2, 0, 2, 4]
  validates_inclusion_of :charisma,     in: [-4, -2, 0, 2, 4]
end
