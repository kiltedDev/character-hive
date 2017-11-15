class DetailsPanel < ApplicationRecord
  validates_presence_of :player_name
  validates_inclusion_of :alignment, in: ["Lawful Good", "Neutral Good", "Chaotic Good", "Lawful Neutral", "True Neutral", "Chaotic Neutral", "Lawful Evil", "Neutral Evil", "Chaotic Evil"]

end
