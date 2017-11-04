FactoryBot.define do
  factory :character_class do
    sequence(:name) { |n| "Paladin#{n}" }
    hit_die 10
    bab "Full"
    caster false
    base_skills 2
  end
end
