class Teacher::CoursesController < ApplicationController
  def index
    @user = current_user
    @bookings = Booking.joins(:course)
                        .where(courses: { user: @user })
                        .order(status: :asc ,created_at: :desc)
  end
end
