class User < ApplicationRecord
  EMAIL = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  USERNAME = /\A[a-zA-Z0-9](\w|\.)*[a-zA-Z0-9]$\z/i

  has_secure_password
  has_many :rides, dependent: :destroy
  mount_uploader :picture, PictureUploader
  validates :username, presence: true, format: {
      with: USERNAME,
      message: "only accepts alphanumeric and underscore "},
      :uniqueness => true
  validates :email, format: {
      with: EMAIL,
      message: "Incorrect email format, try example@example.com"},
      :uniqueness => true
  validates :bio, presence: true
  validates :phone, presence: true
end
