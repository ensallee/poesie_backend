class ImagesController < ApplicationController

  def index
    render json: Image.all
  end

  def create
    @image = Image.new

    @image.user = User.find(image_params[:user_id])
    @image.image = image_params[:image]
    @image.filename = image_params[:filename]
    @image.save

    if (@image.save)
      render json: Image.all
    else
      render json: "not saved"
    end

  end

  def image_params
    params.permit(:image, :filename, :user_id)
  end
end

def image_params
  params.require(:image, :filename, :formData)
end
