class Review < ApplicationRecord
  belongs_to :user
  belongs_to :provider
  validates :content, length: { minimum: 20 }
end
