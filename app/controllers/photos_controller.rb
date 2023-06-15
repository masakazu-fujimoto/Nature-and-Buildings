class PhotosController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @photos = Photo.includes(:user)
  end

  def new
    @photo = Photo.new
  end

  def create
    Photo.create(photo_params)
  end

  def show
    @photo = Photo.find(params[:id])
    @comment = Comment.new
    @comments = @photo.comments.includes(:user)
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    photo = Photo.find(params[:id])
    photo.update(photo_params)
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy
  end

  private
  def photo_params
    params.require(:photo).permit(:name, :image, :text).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end 
end
