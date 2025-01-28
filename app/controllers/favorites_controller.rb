class FavoritesController < ApplicationController
  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user = current_user
    @favorite.course = Course.find(params[:course_id])
    if @favorite.save
      redirect_to course_path(@favorite.course)
    else
      render :new
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to course_path(@favorite.course)
  end

  private

  def favorite_params
    params.require(:favorite).permit(:course_id)
  end
end
