class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    Photo.create(photo_params)
  end

  private
  def photo_params
    params.require(:photo).permit(:name, :image, :text)
  end
end
