class FriendshipsController < ApplicationController

  def index
    @friendships = current_user.friendships
  end

  def create
    @friendship = current_user.friendships.build(friendship_params)
    if @friendship.save
      flash[:notice] = "Added friend successfully"
      redirect_to root_url
    else
      redirect_to :users_path
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Successfully destroyed Friendship"
    redirect_to root_url
  end

  private
  def friendship_params
    params.permit(:friend_id)
  end
end
