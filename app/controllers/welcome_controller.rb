class WelcomeController < ApplicationController
  def index
  end

  def show
    @read_books = current_user.books.where(status: 'read')
  end
end
