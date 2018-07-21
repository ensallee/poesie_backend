class PoemsController < ApplicationController

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

  private

  def poem_params
    params.require(:poem).permit(:url)
  end
end
