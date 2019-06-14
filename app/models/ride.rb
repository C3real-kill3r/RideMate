class Ride < ApplicationRecord
  belongs_to :user
  validates :origin, presence: true
  validates :destination, presence: true
  validates :take_off, presence: true
  validates :capacity, presence: true
end
