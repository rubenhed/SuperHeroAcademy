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
  end

  def update
  end

  def new
  end
end
