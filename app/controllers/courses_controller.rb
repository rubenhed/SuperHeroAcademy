class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    # course_params[:level] = course_params[:level].to_i
    formatted_params = course_params
    formatted_params[:level] = formatted_params[:level].to_i
    @course = Course.new(formatted_params)
    @course.user = User.all.sample
    if @course.save
      redirect_to course_path(@course)
    else
      render :new, status: :unprocessable_entity
    end


  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
  end

  def delete
  end

  def update
  end

  private

  def course_params
    # params[:level] = params[:level].to_i
    params.require(:course).permit(:title, :description, :duration, :level, :price, :location, :online, :start_time, :syllabus, :user_id, :photo)
  end

end
