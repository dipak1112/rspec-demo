require 'spec_helper'

feature 'Users' do
  before do
   @user = FactoryGirl.build(:user)
  end
  scenario 'index page' do
    visit users_path
    expect(page).to have_selector("h1", :text => "Listing users")
  end

  scenario 'new page' do
    create_user_with("d","test@yopmail.com")
    expect(page).to have_content 'User was successfully created.'
    expect(page).to have_content 'test@yopmail.com'
  end


  def create_user_with(name, email)
    visit new_user_path
    fill_in 'Name', with: name
    fill_in 'Email', with: email
    click_button 'Create User'
  end

end