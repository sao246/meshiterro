class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_comment = PostComment.new
    @post_images = @user.post_images.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(@user.id)
    else
      redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
