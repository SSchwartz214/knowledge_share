class FriendshipsController < ApplicationController

  def create
    @friendship = current_user.friendships.build(friendship_params)
    if @friendship.save
      flash[:notice] = "Added friend."
      redirect_to friends_path
    else
      flash[:error] = "Unable to add friend."
      redirect_to friends_path
    end
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to friends_path
  end

  private

    def friendship_params
      params.permit(:friend_id)
    end
end
