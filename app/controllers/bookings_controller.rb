class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @treatment = Treatment.find(params[:treatment_id])
  end

  def new
  end

  def create

    @treatment = Treatment.find(params[:treatment_id])

    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.price = price
    @booking.painting = @painting
    if @booking.save!
      redirect_to dashboard_path
    else
      render painting_path(@painting)
    end
  end
end
