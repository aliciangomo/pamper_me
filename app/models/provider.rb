class Provider < ApplicationRecord
  belongs_to :user
  has_many :treatments
end
