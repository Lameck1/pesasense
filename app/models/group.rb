class Group < ApplicationRecord
  validates :name, length: { in: 4..20 }, presence: true, uniqueness: true
  validates :icon, presence: true

  has_many :expenses
  has_one_attached :icon
  has_one :budget
  belongs_to :user

  scope :ordered, -> { order('name ASC') }
end
