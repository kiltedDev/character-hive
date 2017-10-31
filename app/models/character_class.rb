class CharacterClass < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :hit_die
  validates_inclusion_of :hit_die, in: [6, 8, 10, 12]
  validates_presence_of :bab
  validates_inclusion_of :bab, in: ["Full", "Mid", "Half"]
  validates_presence_of :base_skills
  validates_inclusion_of :base_skills, in: [2, 4, 6, 8]

end
