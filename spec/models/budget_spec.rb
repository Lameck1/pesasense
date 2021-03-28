require 'rails_helper'

RSpec.describe Budget, type: :model do
  let(:budget) { create(:budget) }
  let(:budget_two) { create(:budget) }

  it 'can create a budget' do
    expect(budget).to be_valid
  end

  it 'ensures budget is created by a user' do
    expect(budget_two.user).to be_valid
  end

  it 'ensures budget is created for a group' do
    expect(budget.group).to be_valid
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:group) }
  end

  describe 'validations' do
    it { should validate_presence_of(:group_id) }
    it { should validate_presence_of(:amount) }
    it { should validate_numericality_of(:amount) }
  end
end
