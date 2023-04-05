class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.recents_post
  end

  def show
    # params[:user_id]
    @post = Post.find(params[:id])
  end
end
