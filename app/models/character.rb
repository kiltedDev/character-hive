class Character < ApplicationRecord
  belongs_to :user
  belongs_to :race

  validates_presence_of :name
  validates_presence_of :character_class
end
