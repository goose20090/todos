require 'rails_helper'

feature "User creates todo" do
  scenario "sucessfully" do
    sign_in
    
    click_on 'Add a new todo'
    # Fill in the form fields
    fill_in 'Title', with: 'Buy milk'
    
    # Click the submit button
    click_on 'Submit'
    
    # Assert that the new todo is added to the DOM
    expect(page).to have_css '.todos li', text: 'Buy milk'
  end
end