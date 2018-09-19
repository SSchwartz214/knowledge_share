class RecommendationsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    path = book_path(book)
    number = params[:number]
    message = "#{current_user.first_name} has invited you to read #{book.title}!  For more info visit #{"https://fierce-journey-80426.herokuapp.com" + path}"
      SmsTextMessenger.new(message, number).call
  end
end
