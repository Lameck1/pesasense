require 'rails_helper'

RSpec.describe Expense, type: :model do
  let(:expense) { create(:expense) }
  let(:expense_two) { create(:expense) }
  let(:expense_three) { create(:expense, :with_group) }

  it 'can create an expense' do
    expect(expense).to be_valid
  end

  it 'can create an expense that does not belong to a group' do
    expect(expense_two.group).to be_nil
  end

  it 'can create an expense that belongs to a group' do
    expect(expense_three.group).not_to be_nil
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:group).optional }
  end

  describe 'validations' do
    it { should validate_presence_of(:amount) }
    it { should validate_numericality_of(:amount) }
  end
end
