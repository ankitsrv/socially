class LikesController < ApplicationController

  def create
    @like = Like.new(like_params)
    if @like.save
      redirect_back(fallback_location: root_path)
    else
      flash[:error] = "Like is not saved"
    end

  end

  private
  def like_params
    params.permit(:user_id, :likable_id, :likable_type)
  end
end
