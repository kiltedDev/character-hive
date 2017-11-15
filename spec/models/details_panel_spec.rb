require 'rails_helper'

RSpec.describe DetailsPanel, type: :model do
  context "#player_name" do
    it { should have_valid(:player_name).when("Marquis", "Juniper", "The Dude") }
    it { should_not have_valid(:player_name).when(nil, "") }
  end

  context "#campaign" do
    it { should have_valid(:campaign).when("Way of the Wicked", "Rappan Athuk", "Kingmaker") }
  end

  context "#gender" do
    it { should have_valid(:gender).when("Male", "Female", "Non-Binary", "Fluid", "Other") }
    it { should_not have_valid(:gender).when(12, "$ymbols", "Symb@ls", "Symbo!s", "12")}
  end

  context "#alignment" do
    it { should have_valid(:alignment).when("Lawful Good", "Neutral Good", "Lawful Evil", "Chaotic Evil", "True Neutral") }
    it { should_not have_valid(:alignment).when("", nil, 7, "Good Guy", "Steve") }
  end
end
