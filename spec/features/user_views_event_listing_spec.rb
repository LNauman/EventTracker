require 'spec_helper'

feature "User visits the events page" do
  it "sees a title" do
    visit '/events'
    expect(page).to have_content "All The Events"
    end  

   it "sees all the events listed on the page" do
    event1 = Event.create(location: "My Backyard")
    event2 = Event.create(location: "Chuckie Chesse")

    visit '/events'

    expect(page).to have_content event1.location
    expect(page).to have_content event2.location
  end
end
