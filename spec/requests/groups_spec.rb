require 'rails_helper'

RSpec.describe 'Groups', type: :request do
  let(:user) { create(:user) }

  let(:group_params) do
    { group: {
      name: Faker::Commerce.department,
      icon: fixture_file_upload(Rails.root.join('spec/fixtures/files/test.png'))
    } }
  end

  let(:group) { user.groups.create(group_params[:group]) }

  before(:each) do
    post login_path, params: { name: user.name }
  end

  it 'can get a new group page' do
    get new_group_path
    expect(response).to render_template(:new)
    expect(response.body).to include('New Group')
  end

  it 'can create a new group' do
    post groups_path, params: group_params
    expect(response).to redirect_to(assigns(:groups))
  end

  it 'can get group show page' do
    get group_path(group)
    expect(response.status).to be(200)
    expect(response).to render_template(:show)
  end
end