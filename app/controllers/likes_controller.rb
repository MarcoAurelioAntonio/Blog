class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)
    @like.author_id = current_user.id
    if @like.save

      redirect_to user_posts_path(@like.post, @like.author)
    else

      render 'new'
    end
  end

  private

  def like_params
    params.permit(:author_id, :post_id)
  end
end
