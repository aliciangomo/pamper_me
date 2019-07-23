class ProvidersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @providers = Provider.all
    if params[:query].present? && params[:location].present?
      sql_query = " \
        providers.name @@ :query \
        OR providers.treatments.name @@ :query \
        OR providers.treatments.category @@ :query \
      "
      @providers = Provider.where(sql_query, query: "%#{params[:query]}%")
      if @nearby_providers == @providers.near('params[:location]', 10).empty?
        @providers
      else
        @nearby_providers
      end
    elsif params[:query].present? && params[:location].blank?
      sql_query = " \
        providers.name @@ :query \
        OR providers.treatments.name @@ :query \
        OR providers.treatments.category @@ :query \
      "
      @providers = Provider.where(sql_query, query: "%#{params[:query]}%")
    elsif params[:query].blank? && params[:location].present?
      @nearby_providers == @providers.near('params[:location]', 10).empty?
    else
      @providers = Provider.all
    end
  end


  def show
    set_provider
    @booking = Booking.new
    # When multiple photos are added
    # @photos = @painting.photos.all
  end

  private

  def set_provider
    @provider = Provider.find(params[:id])
  end

  def provider_params
    # not needed yet
    # params.require(:painting).permit(:name, :description, :artist, :year, :style, :available, :price, :photo)
  end

  def treatment_search
   # to refactor the above
  end
end
