class Expense < ApplicationRecord
  validates :name, length: { in: 4..20 }, presence: true
  validates :amount, numericality: true, presence: true
  validates :user_id, presence: true

  belongs_to :group, optional: true
  belongs_to :user

  scope :ordered, -> { order('created_at DESC') }
  scope :grouped, -> { where.not(group_id: nil) }
  scope :non_grouped, -> { where(group_id: nil).order('created_at DESC') }
end
