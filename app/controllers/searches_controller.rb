class SearchesController < ApplicationController
  def search
    @range = params[:range]

    if @range == "User"
      @users = User.looks(params[:search], params[:word])
    else
      @photos = Photo.looks(params[:search], params[:word])
    end
  end

  def show
    @photo = Photo.new
      if @photo.save
         redirect_to searches_path(@photo.id) #セーブできた時
      else
         @photos = Photo.all # この行を追加
      end
  end

  
end
