class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to photo_path(@comment.photo) 
    else
      @photo = @comment.photo
      @comments = @photo.comments
      render "photos/show" 
    end
  end
end
