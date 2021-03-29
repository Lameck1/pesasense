FactoryBot.define do
  factory :group do
    name { Faker::Commerce.department }
    user_id { create(:user).id }

    after(:build) do |group|
      file_name = 'test.png'
      file_path = Rails.root.join('spec', 'fixtures', 'files', file_name)
      group.icon.attach(io: File.open(file_path), filename: file_name, content_type: 'image/png')
    end
  end
end
