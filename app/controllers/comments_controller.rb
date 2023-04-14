class CommentsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author_id = current_user.id
    @comment.post_id = params[:post_id]

    if @comment.save
      # redirect_to user_posts_path
      redirect_to user_posts_path(@comment.post, @comment.author)
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post
    @comment.destroy
    # @post.update(comments_counter: @post.comments.count)
    @post.decrement!(:comments_counter) # Esto es más eficiente ya que no es
    # necesario contar todos los comentarios cada vez que se elimina uno, como
    # el metodo update comentado arriba.

    redirect_back_or_to user_posts_path(current_user), notice: 'Comment Deleted Successfully'
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
