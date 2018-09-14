class DashboardController < ApplicationController

  def index
    @read_books = current_user.books.where(user_books: {status: 'read'})
  end
end
