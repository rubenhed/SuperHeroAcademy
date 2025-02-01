class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :set_teacher, only: [:show]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @courses = Course.all
    if params[:query].present?
      @courses = @courses.where("title ILIKE ?", "%#{params[:query]}%")
    end
  end

  def new
    @course = Course.new
  end

  def create
    formatted_params = course_params
    formatted_params[:level] = formatted_params[:level].to_i
    formatted_params[:category] = formatted_params[:category].to_i
    # We had to add the above lines because the level was being saved as a string. We need to convert it to an integer as we are using it in the model with enum.
    @course = Course.new(formatted_params)
    @course.user = current_user
    if @course.save
      redirect_to course_path(@course)
    else
      render :new, status: :unprocessable_entity
    end


  end

  def show
    # @course = Course.find(params[:id])
  end

  def edit
    # @course = Course.find(params[:id])
  end

  def update
    formatted_params = course_params
    formatted_params[:level] = formatted_params[:level].to_i
    formatted_params[:category] = formatted_params[:category].to_i
    # @course = Course.find(params[:id])
    @course.update(formatted_params)
    redirect_to course_path(@course)
  end

  def destroy
    # @course = Course.find(params[:id])
    @course.destroy
    redirect_to teacher_courses_path, status: :see_other
  end


  private

  def set_course
    @course = Course.find(params[:id])
  end

  def set_teacher
    @teacher = @course.user
  end

  def course_params
    params.require(:course).permit(:title, :description, :duration, :level, :price, :location, :online, :start_time, :syllabus, :user_id, :photo, :category)
  end

end
