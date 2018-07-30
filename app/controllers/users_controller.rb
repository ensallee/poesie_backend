class UsersController < ApplicationController
  before_action :requires_login, only: [:index, :show, :update, :poems]

  def index
    render json: User.all
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

  def create
    @user = User.new

    @user.username = params[:username]
    @user.password = params[:password]
    @user.display_name = params[:display_name]
    @user.hometown = params[:hometown]
    @user.bio = params[:bio]

    if (@user.save)
      render json: {
        username: @user.username,
        id: @user.id,
        token: get_token(payload(@user.username, @user.id))
      }
    else
      render json: {
        errors: @user.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.valid?
      render json: @user
    else
      render json: {
        errors: @user.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def poems
    # id = decoded_token[0]['id']
    id = params[:id]
    @user = User.find_by(id: id)
    render json: @user.poems
  end

  def images
    id = params[:id]
    @user = User.find_by(id: id)
    render json: @user.images
  end

  def user_params
     params.require(:user).permit(:display_name, :hometown, :bio)
  end

end
