class CoursesController < ApplicationController
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

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to teacher_courses_path, status: :see_other
  end

  def update
  end

  private

  def course_params
    params.require(:course).permit(:title, :description, :duration, :level, :price, :location, :online, :start_time, :syllabus, :user_id, :photo)
  end

end
