require 'rails_helper'

feature "Updates" do
  scenario "Person can create a status update" do
    visit root_path
    click_on "Create Status Update"
    fill_in "Status", with: "My feet are warm"
    fill_in "User", with: "Mickey"
    fill_in "Number of likes", with: "100"
    click_on "Create Update"
    expect(page).to have_content("Update was successfully created.")
    expect(page).to have_content("Mickey")
    expect(page).to have_no_content("New Status Update")
  end

  scenario "Person can't create a status update with invalid data" do
    visit root_path
    click_on "Create Status Update"
    fill_in "User", with: "Mickey"
    fill_in "Number of likes", with: "100"
    click_on "Create Update"
    expect(page).to have_content("Status can't be blank")
    expect(page).to have_no_content("Mickey")
    expect(page).to have_content("New Status Update")
  end

end
