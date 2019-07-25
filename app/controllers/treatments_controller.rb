class TreatmentsController < ApplicationController
  def index
    @treatments_
  end

  def show
    @booking = Booking.find(params[:id])
    @treatment = Treatment.find(params[:treatment_id])
  end
end
