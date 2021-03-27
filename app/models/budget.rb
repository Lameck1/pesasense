class Budget < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :amount, numericality: true, presence: true
  validates :user_id, presence: true
  validates :group_id, presence: true

  scope :ordered, -> { order('amount DESC') }
end
