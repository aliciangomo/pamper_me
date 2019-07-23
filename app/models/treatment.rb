class Treatment < ApplicationRecord
  belongs_to :provider
  has_many :bookings
end
