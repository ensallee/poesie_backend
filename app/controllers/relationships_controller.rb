class RelationshipsController < ApplicationController

  def create
    @current_user = User.find(params[:follower_id])
    @followed_user = User.find(params[:followed_id])
    @current_user.follow(@followed_user)

    render json: User.all
  end

  def destroy_relationship

    @current_user = User.find(params[:follower_id])
    @followed_user = User.find(params[:followed_id])
    @current_user.unfollow(@followed_user)

    render json: User.all
 end
end
