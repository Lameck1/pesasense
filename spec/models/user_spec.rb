require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it 'can create a user' do
    expect(user).to be_valid
  end

  describe 'associations' do
    it { should have_many(:expenses) }
    it { should have_many(:budgets) }
    it { should have_many(:groups) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
