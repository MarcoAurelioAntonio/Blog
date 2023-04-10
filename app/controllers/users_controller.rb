class UsersController < ApplicationController
  def index
    @users = User.includes(:posts)
  end

  def show
    # params[:id]
    @user = User.find(params[:id])
    @posts = @user.recents_post
  end
end
