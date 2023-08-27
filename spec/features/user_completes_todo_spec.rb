require 'rails_helper'

feature "User completes todo" do
    scenario "sucessfully" do
      sign_in

      click_on 'Add a new todo'
      # Fill in the form fields
      fill_in 'Title', with: 'Buy milk'
    
      # Click the submit button
      click_on 'Submit'
      
      click_on 'Mark complete'

      
      # Assert that the todo is completed
      expect(page).to have_css '.todos li.completed', text: 'Buy milk'
    end
  end