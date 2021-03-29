class User < ApplicationRecord
  before_save { self.name = name.camelize }
  before_save { self.icon = Faker::Avatar.image }

  validates :name, length: { in: 4..30 }, presence: true, uniqueness: true

  has_many :groups
  has_many :expenses
  has_many :budgets
end
