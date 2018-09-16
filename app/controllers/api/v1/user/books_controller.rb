class Api::V1::User::BooksController < ApplicationController

  def index
    render json: current_user.books.where(user_books: {status: params[:status]})
  end

end
