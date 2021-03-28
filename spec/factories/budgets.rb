FactoryBot.define do
  factory :budget do
    user_id { create(:user).id }
    group_id { create(:group).id }
    amount { [3500, 20_000, 1000, 2500, 2000].sample }
  end
end
