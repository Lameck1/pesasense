FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    icon { Faker::Avatar.image }
  end
end
