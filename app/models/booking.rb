class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :treatment
  monetize :amount_cents
end
