class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @instagram = Instagram.user_recent_media(insta_user_id, {:count => 6})
    set_provider
    @booking = Booking.new
    @phone_number = PhoneNumberLinkFormaterService.new(@provider.phone_number).call

    @provider = Provider.find(params[:provider_id])
    @review = Review.new(review_params)
    @review.provider = @provider
    @review.user = current_user
    if @review.save
      redirect_to provider_path(@provider)
    else
      render 'providers/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def insta_user_id
    "23040587"
  end

  def set_provider
    @provider = Provider.find(params[:provider_id])
  end
end

