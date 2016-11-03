class PictureController < ApplicationController
before_action :authenticate_user!
  def create
    @gram = Gram.find_by_id(params[:id])
    @gram.pictures.create(photo_params)
    redirect_to gram_path(@gram)
  end

  private

  def photo_params
    params.require(:picture).permit(:caption, :gram_id, :pic)
  end
end
