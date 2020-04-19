class DashboardController < ApplicationController
  def index
    @bookings_by_me = Booking.where(user_id: current_user.id)
    @my_cameras = Camera.where(user: current_user)

  end
end
