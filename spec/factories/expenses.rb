FactoryBot.define do
  factory :expense do
    name { %w[ Bread Shirt Textbook Wheelbarrow Toothpaste Kales].sample }
    amount { [200, 350, 800, 60, 700].sample }
    user_id { create(:user).id }

    trait :with_group do
      group_id { create(:group).id }
    end
  end
end
