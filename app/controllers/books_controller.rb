class BooksController < ApplicationController
  def create
    book = Book.find_or_create_by!(title: params[:title], authors: params[:authors], sm_image: params[:image], description: params[:description], page_count: params[:page_count])
    current_user.books << book unless current_user.books.include?(book)

    redirect_to dashboard_path
  end

  def show
    @book = current_user.books.find(params[:id])
    @description = @book.description
    @page_count = @book.page_count
  end

  def destroy
    @book = current_user.books.find(params[:id])
    current_user.books.delete(@book)

    redirect_to dashboard_path
  end
end
