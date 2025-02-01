class AvatarsController < ApplicationController
  before_action :authenticate_user!

  def edit
    @avatar = User::AVATAR_OPTIONS
  end

  def update
    if current_user.update(avatar_params)
      redirect_to root_path, notice: "Avatar updated successfully!"
    else
      render :edit, alert: "Failed to update avatar."
    end
  end

  private

  def avatar_params
    params.require(:user).permit(:avatar)
  end

end
