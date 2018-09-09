require 'rails_helper'

 feature "User can search for books by title" do
  scenario "with a valid book title" do

    visit search_path

    fill_in :q, with: "1984"
    click_on "Search"

    expect(current_path).to eq search_path

    within(first(".book")) do
      expect(page).to have_css(".title")
      expect(page).to have_css(".author")
    end
  end
end
