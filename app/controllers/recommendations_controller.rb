class RecommendationsController < ApplicationController
  def create
    book = params[:book]
    link = params[:link]
    number = params[:number]
    message = "#{current_user.first_name} has invited you to read #{book}!  For more info visit #{"https://fierce-journey-80426.herokuapp.com" + link}"
      TwilioTextMessenger.new(message, number).call
  end
end
