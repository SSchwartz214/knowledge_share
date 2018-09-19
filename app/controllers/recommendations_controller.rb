class RecommendationsController < ApplicationController
  def create
    number = params[:number]
    message = "#{current_user.first_name} has invited you to read book!  For more infor visit book_path"
      TwilioTextMessenger.new(message, number).call
  end
end
