class LikesController < ApplicationController
  before_action :requires_login, only: [:create]

  def create
    like = Like.create(like_params)
    render json: like
  end

  private
  def like_params
    params.permit(:poem_id)
  end
end
