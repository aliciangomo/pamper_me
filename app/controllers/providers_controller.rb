class ProvidersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    puts "Hello There.  This is the index controller"
    byebug
    # @providers = Provider.all
    # if params[:query].present?
    #   # Place holder for search
    #   @providers = Provider.all
    #   # @paintings = Painting.where(location: params[:query])
    #   # @providers = Provider.where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @providers = Provider.all
    # end
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
end
