class Provider < ApplicationRecord
  belongs_to :user
  has_many :treatments
  has_many :photos
  belongs_to :user
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def get_treatments
    self.treatments
  end

end
