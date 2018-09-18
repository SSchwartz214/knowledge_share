class FriendsController < ApplicationController

  def index
    if current_user
      @users = User.where.not(id: current_user.id)
    end
  end
end
