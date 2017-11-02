require 'rails_helper'

RSpec.describe Level, type: :model do
  context "#level_number" do
    it { should have_valid(:level_number).when(1, 8, 12, 20) }
    it { should_not have_valid(:level_number).when(nil, "", -5, 21, 40) }
  end

  it { should belong_to :character }
  it { should belong_to :character_class }
end
