class Camera < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :reviews, :bookings, dependent: :destroy
end
