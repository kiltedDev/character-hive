FactoryBot.define do
  factory :character_class do
    sequence(:name) { |n| "#{Faker::Lovecraft.deity}{n}" }
    hit_die 12
    bab "Full"
    caster false
    base_skills 4
  end
end
