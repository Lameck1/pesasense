class Group < ApplicationRecord
  validates :name, length: { in: 4..20 }, presence: true, uniqueness: true

  has_many :expenses
  belongs_to :user
end
