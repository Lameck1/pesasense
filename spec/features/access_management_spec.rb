require 'rails_helper'

RSpec.feature 'User Login Feature', type: :feature do
  let(:user) { create(:user) }

  scenario 'Cannot visit root_path if user is not logged in' do
    visit root_path

    expect(page).to have_current_path(login_path)
  end

  scenario 'Can visit root_path if user is logged in' do
    visit login_path

    fill_in 'Name', with: user.name

    click_button('Log In')

    expect(page).to have_current_path(root_path)
  end

  scenario 'Login fails when name is wrong' do
    visit login_path

    fill_in 'Name', with: 'Somebody'
    click_button('Log In')

    expect(page).to have_current_path(login_path)
  end
end
