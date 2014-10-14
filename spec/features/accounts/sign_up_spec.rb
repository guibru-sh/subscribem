require "rails_helper"

feature "Accounts" do
  scenario "creating an account" do
    # binding.pry
    visit subscribem.root_path
    click_link "Account Sign Up"
    fill_in "Name", :with => "Test"
    fill_in "Email", :with => "subscribe@example.com"
    fill_in "Password", :with => "password"
    fill_in "Password confirmation", :with => "password"
    click_button "Create Account"
    success_message = "Your account has been successfully created."
    expect(page).to have_content(success_message)
    expect(page).to have_content("Signed in as subscribe@example.com")
  end
end
