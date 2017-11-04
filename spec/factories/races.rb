FactoryBot.define do
  factory :race do
    sequence(:name) { |n| "Human#{n}" }
    wild true
    strength 2
  end
end
