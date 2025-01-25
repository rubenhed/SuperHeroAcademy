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
      course_id: params[:course_id],
      user: current_user,
      status: :pending
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

  # private

  # def booking_params
  #   params.require(:booking).permit(:course_id)
  # end
end
