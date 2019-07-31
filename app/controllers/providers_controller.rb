class ProvidersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @my_location = request.location
    @providers = Provider.geocoded
    if params[:query].present?
      sql_query = " \
        users.first_name @@ :query \
        OR users.last_name @@ :query \
        OR treatments.name @@ :query \
        OR treatments.category @@ :query \
      "
      @providers = Provider.joins(:treatments).joins(:user).where(sql_query, query: "%#{params[:query]}%")
    end

    if params[:location].present?
      if nearby_providers = @providers.near('params[:location]', 10).empty?
        @providers
      else
        @providers = nearby_providers
      end
    end

    @providers = @providers.uniq

    @markers = @providers.map do |provider|
      {
        lat: provider.latitude,
        lng: provider.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { provider: provider })
      }
    end
    @providers
  end

  def show
    @instagram = Instagram.user_recent_media(insta_user_id, {:count => 6})
    # @instagram = Instagram.media_popular
    set_provider
    @booking = Booking.new
    # input this into new/create when a new provider
    # is added to save it in the DB in the correct format
    @phone_number = PhoneNumberLinkFormaterService.new(@provider.phone_number).call
    # When multiple photos are added
    # @photos = @painting.photos.all
    @review = Review.new
  end

<<<<<<< HEAD
  def blank_stars
    5 - rating.to_i
  end


=======
>>>>>>> 17961a47ed05375c6b511f133d7371cc5f547da5
  private

  def insta_user_id
    "23040587"
  end

  def set_provider
    @provider = Provider.find(params[:id])
  end

  def provider_params
    # not needed yet
    params.require(:provider).permit(:location, :photo, :statement, :description, :rating, :rating, :user_id, :neighborhood, :phone_number, :latitude, :longitude)
  end

  def treatment_search
   # to refactor the above
  end
end
