class BookingsController < ApplicationController
  def new
    @camera = Camera.find(params[:camera_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.camera = Camera.find(params[:camera_id])
    @booking.user = current_user
    authorize @booking
    (@booking.save) ? (redirect_to camera_path(params[:camera_id])) : (render :new)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end