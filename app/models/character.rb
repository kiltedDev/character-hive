class Character < ApplicationRecord
  belongs_to :user
  belongs_to :race
  has_many :levels

  validates_presence_of :name
  validates_presence_of :character_class
  validates_presence_of :level
  validates_inclusion_of :level, in: [*1..20]
end
