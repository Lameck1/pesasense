require 'rails_helper'

RSpec.describe 'Expenses', type: :request do
  let(:user) { create(:user) }

  let(:group_params) do
    { group: {
      name: Faker::Commerce.department,
      icon: fixture_file_upload(Rails.root.join('spec/fixtures/files/test.png'))
    } }
  end

  let(:group) { user.groups.create(group_params[:group]) }

  let(:expense_params) do
    { expense: {
      name: 'Sandals',
      group_id: group.id,
      amount: 500
    } }
  end

  let(:expense) { user.expenses.create(expense_params[:expense]) }

  before(:each) do
    post login_path, params: { name: user.name }
  end

  it 'can get a new expense page' do
    get new_expense_path
    expect(response).to render_template(:new)
    expect(response.body).to include('New Expense')
  end

  it 'can create a new expense' do
    post expenses_path, params: expense_params
    follow_redirect!
    expect(response.body).to include('Expense saved!')
  end

  it 'can get expenses index page' do
    get expenses_path
    expect(response).to render_template(:index)
  end
end