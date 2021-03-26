class User < ApplicationRecord
  before_save { self.name = name.camelize }
  before_save { self.icon = Faker::Avatar.image }

  validates :name, length: { in: 4..20 }, presence: true, uniqueness: true

  has_many :groups
  has_many :expenses
end
