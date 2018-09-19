class BooksController < ApplicationController
  def create
    book = Book.find_or_create_by!(book_params)
    unless current_user.books.include?(book)
      user_book = UserBook.create(user_book_params.merge(book_id: book.id, user_id: current_user.id))
    end

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

  private
  def book_params
    params.require(:book).permit(:title, :authors, :sm_image, :description, :page_count)
  end

  def user_book_params
    params.require(:user_book).permit(:status)
  end

end
