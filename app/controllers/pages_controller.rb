class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @bookings = Booking.where(user: current_user)
    @provider = current_user.provider
    @provider_bookings = Booking.joins(:treatment).where('treatments.provider': @provider)

    provider_moneys = []
    @provider_bookings.each do |booking|
      provider_moneys << booking.amount_cents
    end

    @provider_earnings = provider_moneys.reduce(0, :+)

    if @current_user.provider
      @user_phone_number = PhoneNumberLinkFormaterService.new(@current_user.phone_number).call
      @provider_phone_number = PhoneNumberLinkFormaterService.new(@provider.phone_number).call
    else
      @user_phone_number = PhoneNumberLinkFormaterService.new(@current_user.phone_number).call
    end

    @pieSize = {
    :height => 150,
    :width => 150
    }
    @confirmed = @provider_bookings.where("status = ?", '1')
    @declined = @provider_bookings.where("status = ?", '2')
    @cancelled = @provider_bookings.where("status = ?", '3')
    @desisted = @provider_bookings.where("status = ?", '4')

    @pieData = [
          {
            value: @confirmed.count,
            color: '#19AA86',
            highlight: "#19AA86",
            label: "Confirmed"
          },
          {
            value: @declined.count,
            color: "#c71f0c",
            highlight: "#c71f0c",
            label: "Declined"
          },
          {
            value: @cancelled.count,
            color: "#000000",
            highlight: "#000000",
            label: "Cancelled by user"
          },
          {
            value: @desisted.count,
            color: "#193CE2",
            highlight: "#193CE2",
            label: "Did not get to payment"
          }

        ].to_json
  end

  def review_booking
    @booking = Booking.find(params[:id])
  end
end
