require 'rails_helper'

describe 'user adds and removes a book to their dashboard page' do
  scenario 'they click Read' do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit search_path

    fill_in :q, with: "1984"

    within('.search-form') do
      click_on "Search"
    end

    expect(current_path).to eq search_path

    within (first(".card")) do
      click_on "Add to Already Read"
    end

    expect(current_path).to eq(dashboard_path)
    expect(page).to have_content("1984")

    within first(".card") do
      click_on "Remove"
    end

    expect(current_path).to eq(dashboard_path)
    expect(page).to_not have_content("1984")
  end
end
