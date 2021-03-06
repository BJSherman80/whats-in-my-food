require 'rails_helper'


feature "user can search for food" do

  scenario "user submits valid food name" do

    visit '/'

    fill_in :q, with: "sweet potatoes"
    click_on "Search"
    expect(current_path).to eq("/foods")

    expect(page).to have_css(".food")
    save_and_open_page
    within(first(".food")) do
      expect(page).to have_css(".code")
      expect(page).to have_css(".description")
      expect(page).to have_css(".brand_owner")
      expect(page).to have_css(".ingredients")
    end
  end
end
