require 'rails_helper'

RSpec.describe StatValue, type: :model do
  context "#stats" do
    it { should have_valid(:name).when(18, 14, 10, 7) }
    it { should_not have_valid(:name).when(19, 25, 5, 0, nil, "") }

    it { should have_valid(:value).when(17, 13, 10, 5, -4) }
    it { should_not have_valid(:value).when(19, 25, -5, nil, "") }

  end
end
