class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
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
  end
end
