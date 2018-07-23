class PoemsController < ApplicationController
  before_action :requires_login, only: [:create, :destroy]

  def create
    id = decoded_token[0]['id']

    @user = User.find_by(id: id)

    if (@user)
      @user.poems << Poem.create(poem_params)
      render json: {
        message: "saved"
      }, status: :ok
    else
      render json: {
        message: "not saved"
        }, status: :unauthorized
    end
  end

  def destroy
    @poem = Poem.find(params[:id])
    @poem.destroy
    render json: {
      message: "deleted"
    }, status: :ok
  end

  private

  def poem_params
    params.require(:poem).permit(:url)
  end
end
