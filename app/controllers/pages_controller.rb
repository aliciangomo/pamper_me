class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @bookings = Booking.where(user: current_user)
    @provider = current_user.provider
    @provider_bookings = Booking.joins(:treatment).where('treatments.provider': @provider)
  end
end
