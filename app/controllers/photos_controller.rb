class PhotosController < ApplicationController
  before_action :move_to_index, except: [:index]
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    Photo.create(photo_params)
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    photo = Photo.find(params[:id])
    photo.update(photo_params)
  end

  private
  def photo_params
    params.require(:photo).permit(:name, :image, :text)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end 
end
