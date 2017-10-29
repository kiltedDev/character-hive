class StatValue < ApplicationRecord
  validates_presence_of :name
  validates_inclusion_of :name, in: [*7..18]
  validates_presence_of :value
  validates_inclusion_of :value, in: [-4,-2,-1,0,1,2,3,5,7,10,13,17]
end
