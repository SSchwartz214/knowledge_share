class DashboardController < ApplicationController

  def index
    @read_books = current_user.books
  end
end
