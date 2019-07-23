class Provider < ApplicationRecord
  has_many :treatments
  belongs_to :user
end
