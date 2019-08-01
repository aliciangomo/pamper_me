class PaymentsController < ApplicationController
  before_action :set_booking, only: %i[new create]


  def new
  end

  def create
    customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @booking.amount_cents,
    description:  "Payment for treatment #{@booking.treatment} for booking #{@booking.id}",
    currency:     @booking.amount.currency
  )

  @booking.update(payment: charge.to_json, status: 0)
  redirect_to treatment_booking_path(@booking.treatment, @booking.id)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to review_booking_path(@booking)
  end

  def stripe_payment
    @booking = Booking.find params[:id]
    @booking.payment_type = 2
    @booking.save
    respond_to do |format|
      format.html { redirect_to review_booking_path(@booking) }
      format.js  # <-- will render `app/views/bookings/confirm.js.erb`
    end
  end


  def apple_payment
    @booking = Booking.find params[:id]
    @booking.payment_type = 1
    @booking.save
    respond_to do |format|
      format.html { redirect_to review_booking_path(@booking) }
      format.js  # <-- will render `app/views/bookings/confirm.js.erb`
    end
  end

  def paypal_payment
    @booking = Booking.find params[:id]
    @booking.payment_type = 3
    @booking.save
    respond_to do |format|
      format.html { redirect_to review_booking_path(@booking) }
      format.js  # <-- will render `app/views/bookings/confirm.js.erb`
    end
  end

  private

  # def booking_params
  #   params.require(:booking).permit(:payment_type)
  # end

  def set_booking
    @booking = current_user.bookings.where(status: 4).find(params[:booking_id])
  end
end
