class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
  end

  def edit
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  def create
    @booking = Booking.new(
    user_id: User.fist.id,
    course_id: params[:course_id]
  )

    if @booking.save
      flash[:alert] = "Booking successfully created!"
      redirect_to course_path(@booking.course_id)
    else
      flash[:alert] = "Failed to create booking."
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  def new
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :course_id, :user_id)
  end
end
