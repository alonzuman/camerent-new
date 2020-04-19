class DashboardController < ApplicationController
  def main
    @bookings_by_me = Booking.where(user_id: current_user.id)
    @my_cameras = Camera.where(user: current_user)
    @bookings_i_recieved = Booking.where(camera_id: @my_cameras.ids)
  end
end
