require 'rails_helper'

RSpec.describe CharacterSizeCategory, type: :model do
  context "#associations" do
    it { should belong_to :size_category }
    it { should belong_to :character }
  end
end
