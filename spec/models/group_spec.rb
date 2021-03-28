require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:group) { create(:group) }

  it 'can create a group' do
    expect(group).to be_valid
  end

  it 'ensures icon is attached' do
    expect(group.icon).to be_attached
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_one(:budget) }
    it { should have_one_attached(:icon) }
    it { should have_many(:expenses) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:icon) }
  end
end
