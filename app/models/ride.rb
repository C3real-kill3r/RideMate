class Ride < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  validates :origin, :destination, :take_off, :capacity, presence: true
end
