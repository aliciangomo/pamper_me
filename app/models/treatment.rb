class Treatment < ApplicationRecord
  belongs_to :provider
  has_many :bookings
  monetize :price_cents
end
