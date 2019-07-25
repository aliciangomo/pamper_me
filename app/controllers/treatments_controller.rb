class TreatmentsController < ApplicationController
  def index
    @treatments = Treatments.all
  end

  # def show
  #   @treatment = Treatment.find(params[:treatment_id])
  # end

  private

  def strong_params
    params.require(:treatment).permit(:name, :description, :provider_id, :price, :category)
  end
end
