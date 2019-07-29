class Photo < ApplicationRecord
  belongs_to :provider
  mount_uploader :data, PhotoUploader
end
