class Api::V1::CommentsController < Api::V1::ApplicationController
  before_action :set_up_post, :set_up_user

  def index
    comments = Post.find(params[:post_id]).comments
    render json: comments, status: :ok
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment, status: :ok
    else
      render json: { errors: comment.record.errors }, status: :unprocessable_entity
    end
  end

  private

  def set_up_post
    @post_id = Post.find(params[:post_id])
  end

  def set_up_user
    @user_id = User.find(params[:user_id])
  end

  def comment_params
    params.require(:comment).permit(:text).merge(post_id: @post_id.id, author_id: @user_id.id)
  end
end
