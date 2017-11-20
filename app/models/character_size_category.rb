class CharacterSizeCategory < ApplicationRecord
  belongs_to :size_category
  belongs_to :character
end
