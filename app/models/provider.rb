class Provider < ApplicationRecord
  belongs_to :user
  has_many :treatments
  has_many :photos, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :user
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def get_treatments
    self.treatments
  end

  def rating_number
    reviews = self.reviews
    ratings = []
    reviews.each do |review|
      ratings << review.rating.to_i
    end
    if reviews.count.zero?
      self.rating = 0
    else
      sum = 0
      ratings.each { |a| sum+=a }
      self.rating = sum/(self.reviews.count)
    end
  end

  def distance_to(my_location)
    return Geocoder::Calculations.distance_between([my_location.latitude,my_location.longitude], [latitude,longitude])
  end
end
