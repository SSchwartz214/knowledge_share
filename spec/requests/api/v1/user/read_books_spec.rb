require 'rails_helper'

describe "Read Books API" do
  it "gets all user's read books" do
    user = create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    book_1 = create(:book)
    book_2 = create(:book)
    create(:user_book, user: user, book: book_1, status: 0)
    create(:user_book, user: user, book: book_2, status: 0)


    get '/api/v1/user/read_books'

    expect(response).to be_successful

    read_books = JSON.parse(response.body)

    expect(read_books.count).to eq(2)
  end
end
