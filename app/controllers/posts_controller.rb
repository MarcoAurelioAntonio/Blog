class PostsController < ApplicationController
  # If you used id for both, how would it know which id is that?
  # For example when your getting only the users url, its a single id so it can be just ID...
  # In the second cenario, you're gonna have 2 different ids, one for the user,
  # and another id for the post (example: 1 and 5),
  # so for you to know which one you're dealing with,
  # conventionally, only the last one is gonna be just "id",
  # the previous ones are gonna be along their model names, like user_id.
  def index
    @user = User.find(params[:user_id])
    @posts = @user.recents_post
  end

  def show
    # params[:user_id]
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  # Action for the form
  # Create a new post
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author_id = current_user.id

    @post.comments_counter = 0
    @post.likes_counter = 0

    if @post.save
      redirect_to user_posts_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
