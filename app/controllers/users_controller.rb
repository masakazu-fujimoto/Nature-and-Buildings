class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @photos = current_user.photos
  end
end
