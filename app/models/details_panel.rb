class DetailsPanel < ApplicationRecord
  validates_presence_of :player_name
  validates_format_of :gender, with: /\A[a-zA-Z'_.-]+\z/
  validates_inclusion_of :alignment, in: ["Lawful Good", "Neutral Good", "Chaotic Good", "Lawful Neutral", "True Neutral", "Chaotic Neutral", "Lawful Evil", "Neutral Evil", "Chaotic Evil"]

end
