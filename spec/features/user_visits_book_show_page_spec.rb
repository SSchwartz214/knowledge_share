require 'rails_helper'

describe 'A user' do
  it 'visits a book show page from dashboard' do
    user = create(:user)
    book = create(:book)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit search_path

    fill_in :q, with: "1984"

    within('.search-form') do
      click_on "Search"
    end

    expect(current_path).to eq search_path

    within (first(".card")) do
      click_on "Add to Read"
    end

    within(first(".card")) do
      click_on "More Info"
    end

    expect(current_path).to eq(book_path(book))

    expect(page).to have_css(".description")
    expect(page).to have_css(".page_count")
  end
end
