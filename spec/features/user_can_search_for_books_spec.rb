require 'rails_helper'

 feature "User can search for books by title" do
  scenario "with a valid book title" do

    visit search_path

    fill_in :q, with: "1984"

    within('.search-form') do
      click_on "Search"
    end

    expect(current_path).to eq search_path

    within(first(".card")) do
      expect(page).to have_content("1984")
    end
  end
end
