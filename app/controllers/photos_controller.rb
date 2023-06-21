class PhotosController < ApplicationController
  before_action :set_photo, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @photos = Photo.includes(:user).order("created_at DESC")

  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
    else
      render 'new'
    end
  end

  def show
    @comment = Comment.new
    @comments = @photo.comments.includes(:user)
  end

  def edit
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
    else
      render 'edit'
    end
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy
  end

  def search
    @photos = Photo.search(params[:keyword])
  end

  private
  def photo_params
    params.require(:photo).permit(:name, :image, :text, :address, :latitude, :longitude).merge(user_id: current_user.id)
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
