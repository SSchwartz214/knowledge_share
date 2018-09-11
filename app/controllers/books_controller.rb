class BooksController < ApplicationController
  def create
    book = Book.find_or_create_by!(title: params[:title], authors: params[:authors], sm_image: params[:image])
    current_user.books << book unless current_user.books.include?(book)

    redirect_to dashboard_path
  end
end
