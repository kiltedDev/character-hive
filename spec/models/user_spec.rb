require 'rails_helper'

RSpec.describe User, type: :model do
  before(:example) do
    original = FactoryBot.create(:user)
  end

  context "#user" do
    it { should have_valid(:username).when('Azathoth', 'num112358', 'has.period', 'has-hyphen', 'has_underscore', "has'apostrophe") }
    it { should_not have_valid(:username).when(nil, '', 'bob', 'iamthegreatandterribleozwhoareyou', 'other$ymbols', 'others%mbols', 'othersym&ols', 'othersymbo)s', 'othersymbo]s', '@thersymbols', 'othersymbo!s') }

    it { should have_valid(:email).when('user@example.com', 'another@gmail.com') }
    it { should_not have_valid(:email).when(nil, '', 'urser', 'usersr@com', 'usersba.com') }

    it { should validate_uniqueness_of(:email)}
  end

  context "#associations" do
    # it { should have_many : }
    # it { should have_many : }
  end
end
