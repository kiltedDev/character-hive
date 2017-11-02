require "rails_helper"

RSpec.describe Race, type: :model do
  context "#name" do
    it { should have_valid(:name).when("Elf", "Halfling", "Half-Ogre") }
    it { should_not have_valid(:name).when(nil, "") }
  end

  context "#vision" do
    it { should have_valid(:vision).when("Normal", "Darkvision, 30'", "Low Light Vision") }
    it { should_not have_valid(:vision).when(nil, "") }
  end

  context "#racial mods" do
    it { should have_valid(:strength).when(4, 2, 0, -4) }
    it { should_not have_valid(:strength).when(nil, 5, 3, -5) }

    it { should have_valid(:constitution).when(4, 2, 0, -4) }
    it { should_not have_valid(:constitution).when(nil, 5, 3, -5) }

    it { should have_valid(:dexterity).when(4, 2, 0, -4) }
    it { should_not have_valid(:dexterity).when(nil, 5, 3, -5) }

    it { should have_valid(:intelligence).when(4, 2, 0, -4) }
    it { should_not have_valid(:intelligence).when(nil, 5, 3, -5) }

    it { should have_valid(:wisdom).when(4, 2, 0, -4) }
    it { should_not have_valid(:wisdom).when(nil, 5, 3, -5) }

    it { should have_valid(:charisma).when(4, 2, 0, -4) }
    it { should_not have_valid(:charisma).when(nil, 5, 3, -5) }

  end

  context "#associations" do
    it { should have_many :characters }
  end
end
