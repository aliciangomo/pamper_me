class Provider < ApplicationRecord
  belongs_to :user
  has_many :treatments
  belongs_to :user
end
