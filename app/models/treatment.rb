class Treatment < ApplicationRecord
  belongs_to :provider
  has_many :bookings

  def name_and_price
    "#{name} - €#{price}"
  end
end
