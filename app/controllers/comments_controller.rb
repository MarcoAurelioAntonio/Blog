class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to user_post_path(id: current_user.id), notice: 'Comment was successfully created.'
    else
      render :new
    end
  end
end
