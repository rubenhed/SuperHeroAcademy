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
      redirect_to course_path(@booking.course_id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:status]
    @booking.save

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to request.referer || courses_path, notice: "Booking updated." }
    end
  end

  def new
  end

  # private

  # def booking_params
  #   params.require(:booking).permit(:course_id)
  # end
end
