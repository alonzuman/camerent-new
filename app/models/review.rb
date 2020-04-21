class Review < ApplicationRecord
  belongs_to :camera
  validates :content, length: { minimum: 20 }
end
