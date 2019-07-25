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
    @booking = Booking.new(booking_params)
    @booking.treatment = Treatment.find(params[:booking][:treatment_id])
    # @provider = @treatment.provider
    @booking.user = current_user
    @booking.price = booking.treatment.price
    @booking.status = 0

    # @booking.user = current_user
    # @booking.price = price
    # @booking.painting = @painting
    if @booking.save!
      redirect_to dashboard_path
    else
      render painting_path(@painting)
    end
  end

  private

  def strong_params
    params.require(:booking).permit(:treatment_id, :date, :price, :status, :user_id)
  end
end
