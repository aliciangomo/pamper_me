class Treatment < ApplicationRecord
  belongs_to :provider
  has_many :bookings
  monetize :price_cents


  def name_and_price
    "#{name} - €#{price}"
  end

end
