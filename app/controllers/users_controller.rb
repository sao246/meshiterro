class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = .all
  end

  def edit
  end
  private

  def users_params
    params.require(:user).permit(:user_id)
  end

end
