require 'rails_helper'

describe 'A user' do
  it 'visits a book show page from dashboard' do
    user = create(:user)
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

    expect(current_path).to eq(book_path(user.books.last))

    expect(page).to have_content("1984")
  end
end
