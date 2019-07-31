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

  def distance_to(my_location)
    return Geocoder::Calculations.distance_between([my_location.latitude,my_location.longitude], [latitude,longitude])
  end
end
