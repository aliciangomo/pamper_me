class ReviewsController < ApplicationController

  def create
    @provider = Provider.find(params[:provider_id])
    @review = Review.new(review_params)
    @review.provider = @provider
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
end
end
