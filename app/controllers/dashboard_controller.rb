class DashboardController < ApplicationController

  def index
    @read_books = current_user.books
  end

  # def destroy
  #   @book = current_user.Book.find_by(params[:title])
  #   @book.destroy
  #
  #   redirect_to dashboard_path
  # end
end
