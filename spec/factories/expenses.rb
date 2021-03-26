FactoryBot.define do
  factory :expense do
    name { 'MyString' }
    amount { 1.5 }
    description { 'MyText' }
    group { nil }
    user { nil }
  end
end
