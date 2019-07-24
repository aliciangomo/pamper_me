class ProvidersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
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

    @markers = @providers.map do |provider|
      {
        lat: provider.latitude,
        lng: provider.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { provider: provider })
      }
    end
  end

  def show
    set_provider
    @booking = Booking.new
    tel_to(@provider.phone_number)
    # When multiple photos are added
    # @photos = @painting.photos.all
  end

  private

  def tel_to(text)
    groups = text.to_s.scan(/(?:^\+)?\d+/)
    if groups.size > 1 && groups[0][0] == '+'
      # remove leading 0 in area code if this is an international number
      groups[1] = groups[1][1..-1] if groups[1][0] == '0'
      groups.delete_at(1) if groups[1].size == 0 # remove if it was only a 0
    end
    # groups = text.to_s.scan(/(?:^\+)?\d+/)
    @phone_number = "tel:#{groups.join '-'}"
  end

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
