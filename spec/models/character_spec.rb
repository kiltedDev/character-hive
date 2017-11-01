require 'rails_helper'

RSpec.describe Character, type: :model do
  context "#name" do
    it { should have_valid(:name).when("Hariq", "Android 12", "Giles Corey") }
    it { should_not have_valid(:name).when(nil, "") }
  end

  context "#character_class" do
    it { should have_valid(:character_class).when("Fighter", "Mage", "Thief") }
    it { should_not have_valid(:character_class).when(nil, "") }
  end

  it { should belong_to :user }
  it { should belong_to :race }
end
