require 'spec_helper'

feature "User creates a new Event" do 
  it "creates a valid event" do
    visit '/events/new'
    fill_in "Location", with: "Launch Academy"
    click_on "Create Event"

    expect(page).to have_content "Event was successfully created"
  end

  it "attempts to creaate an event without a location" do
    visit '/events/new'
    click_on "Create Event"
    expect(page).to have_content "Location can't be blank"
  end
end
