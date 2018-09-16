class DashboardController < ApplicationController

  def index
    @read_books = current_user.books.where(user_books: {status: 0})
    @currently_reading_books = current_user.books.where(user_books: {status: 1})
    @want_to_read_books = current_user.books.where(user_books: {status: 2})
  end
end
