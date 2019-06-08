class Ride < ApplicationRecord
  belongs_to :user
  validates :origin, presence: true
  validates :destination, presence: true
end
