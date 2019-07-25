class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @treatment = Treatment.find(params[:treatment_id])
  end

  def edit
  end

  def update
  end

  def confirm
    @booking = Booking.find(params[:id])
    @booking.status = 1
    if @booking.save
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.js  # <-- will render `app/views/bookings/confirm.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'restaurants/show' }
        format.js  # <-- idem
      end
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    current_user.provider.nil?
    @booking.status = 3
  else
    @booking.status = 2
    if @booking.save!
    redirect_to dashboard_path
    else
    render :show
    end

  def new

  end

  def create
    @booking = Booking.new(strong_params)
    @booking.treatment = Treatment.find(params[:booking][:treatment_id])
    # @provider = @treatment.provider
    @booking.user = current_user
    @booking.price = @booking.treatment.price
    @booking.status = 0
    @booking.date = Date.tomorrow
    if @booking.save!
      # redirect_to treatment_booking_path(@booking.treatment, @booking)
      redirect_to review_booking_path(@booking)
    else
      # Need to configure this
      render bookings_path(@booking)
    end
  end

  private

  def strong_params
    params.require(:booking).permit(:treatment_id, :date, :price, :status, :user_id)

  end
end
