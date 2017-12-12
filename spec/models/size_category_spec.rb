require 'rails_helper'

RSpec.describe SizeCategory, type: :model do

    context "#creature_size" do
      it { should have_valid(:creature_size).when("Fine", "Diminutive", "Tiny", "Small", "Medium", "Large", "Large (Tall)", "Huge", "Huge (Tall)", "Gargantuan", "Gargantuan (Tall)", "Colossal", "Colossal (Tall)") }
      it { should_not have_valid(:creature_size).when(nil, "", "Biggish", "Not so big", "Greg") }
    end

    context "#size_modifier" do
      it { should have_valid(:size_modifier).when(8,4,2,1,0,-1,-2,-4,-8) }
      it { should_not have_valid(:size_modifier).when(nil, "", 3,5,9,-3,-5,-9) }
    end

    context "#special_size_modifier" do
      it { should have_valid(:special_size_modifier).when(-8,-4,-2,-1,0,1,2,4,8) }
      it { should_not have_valid(:special_size_modifier).when(nil, "", 3,5,9,-3,-5,-9) }
    end

    context "#fly_modifier" do
      it { should have_valid(:fly_modifier).when(8,6,4,2,0,-2,-4,-6,-8) }
      it { should_not have_valid(:fly_modifier).when(nil, "", 3,5,9,-3,-5,-9) }
    end

    context "#stealth_modifier" do
      it { should have_valid(:stealth_modifier).when(16,12,8,4,0,-4,-8,-12,-16) }
      it { should_not have_valid(:stealth_modifier).when(nil, "", 3,5,9,-3,-5,-9) }
    end

    context "#base_reach" do
      it { should have_valid(:base_reach).when(0,5,10,15,20,30) }
      it { should_not have_valid(:base_reach).when(nil, "", 3,9,-3,-5,-9, 21, 33) }
    end

    context "#associations" do
      it { should have_many :characters }
      it { should have_many :character_size_categories }
    end
end
