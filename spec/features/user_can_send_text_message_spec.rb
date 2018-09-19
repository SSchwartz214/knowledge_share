require 'rails_helper'

describe 'A registered user' do
  context "sends a text message" do
    it "is a link to a book show page" do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      book = create(:book)
      user_book = create(:user_book, user_id: user.id, book_id: book.id)

      visit book_path(book)

      fill_in :number, with: "5166591396"

      click_on "Send Text"
      # Then the phone number should receive a text message that says “Seth has invited you to read {BOOK TITLE}! For more info visit: ’http://example.com/path/to/book'” (or whatever your real routes are)
    end
  end
end
