class Api::V1::User::ReadBooksController < ApplicationController

  def index
    render json: current_user.books.where(user_books: {status: 'read'})
  end

end
