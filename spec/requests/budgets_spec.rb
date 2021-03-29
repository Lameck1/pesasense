require 'rails_helper'

RSpec.describe 'Budgets', type: :request do
  let(:user) { create(:user) }

  let(:group_params) do
    { group: {
      name: Faker::Commerce.department,
      icon: fixture_file_upload(Rails.root.join('spec/fixtures/files/test.png'))
    } }
  end

  let(:group) { user.groups.create(group_params[:group]) }

  let(:budget_params) do
    { budget: {
      group_id: group.id,
      amount: 2000
    } }
  end

  let(:budget) { user.budgets.create(budget_params[:budget]) }

  before(:each) do
    post login_path, params: { name: user.name }
  end

  it 'can get a new budget page' do
    get new_budget_path
    expect(response).to render_template(:new)
    expect(response.body).to include('New Budget')
  end

  it 'can create a new budget' do
    post budgets_path, params: budget_params
    expect(response).to redirect_to(assigns(:budgets))
  end

  it 'can get budget show page' do
    get budget_path(budget)
    expect(response.status).to be(200)
    expect(response).to render_template(:show)
  end

  it 'can get budgets index page' do
    get budgets_path
    expect(response).to render_template(:index)
  end

  it 'can update a budget' do
    patch budget_path(budget), params: { budget: { amount: 1500 } }
    follow_redirect!
    expect(response.body).to include('Budget updated')
  end
end
