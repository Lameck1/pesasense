class User < ApplicationRecord
  validates :name, length: { in: 4..20 }, presence: true

  has_many :groups
  has_many :expenses
end
