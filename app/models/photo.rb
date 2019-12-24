class Photo < ApplicationRecord
  belongs_to :user
  has_many :photo_surveys, dependent: :destroy
end
