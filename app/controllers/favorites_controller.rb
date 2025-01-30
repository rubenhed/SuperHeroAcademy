class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def new
    @favorite = Favorite.new
  end

  def create
      @course = Course.find(params[:course_id])
      favorite = current_user.favorites.find_by(course: @course)
      if favorite
        favorite.destroy
        @favorited = false
      else
        Favorite.create(user: current_user, course: @course)
        @favorited = true
      end
      respond_to do |format|
        format.html { redirect_to course_path(@course) }
        format.json { render json: { favorited: @favorited } }
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
