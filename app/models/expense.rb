class Expense < ApplicationRecord
  validates :name, length: { in: 4..20 }, presence: true
  validates :description, length: { in: 10..50 }, presence: true
  validates :amount, numericality: true, presence: true
  validates :user_id, presence: true

  belongs_to :group, optional: true
  belongs_to :user

  scope :ordered, -> {order('created_at DESC')}
  scope :grouped, -> { includes(group) }
end
