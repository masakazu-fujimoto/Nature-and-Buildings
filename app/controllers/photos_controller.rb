class PhotosController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]
  before_action :set_q, only: [:index, :search]

  def index
    @photos = Photo.includes(:user).order("created_at DESC")
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

  def search
    @photos = Photo.search(params[:keyword])
  end


  private
  def set_q
    @q = Photo.ransack(params[:q])
  end

  def photo_params
    params.require(:photo).permit(:name, :image, :text).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end 
end
