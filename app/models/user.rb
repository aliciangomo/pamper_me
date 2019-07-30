class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # mount_uploader :avatar,
  has_many :treatments, through: :bookings
  has_many :bookings
  has_one :provider
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
