class User < ApplicationRecord
  EMAIL = /\A[a-zA-Z0-9_.+-]+@andela+\.com+$\z/i
  USERNAME = /\A[a-zA-Z0-9](\w|\.)*[a-zA-Z0-9]$\z/i

  has_secure_password
  has_many :rides, dependent: :destroy
  has_many :requests, dependent: :destroy
  mount_uploader :picture, PictureUploader
  validates :username, presence: true, format: {
      with: USERNAME,
      message: "only accepts alphanumeric and underscore "},
      :uniqueness => true
  validates :email, format: {
      with: EMAIL,
      message: "format is incorrect, try your.name@andela.com"},
      :uniqueness => true
  validates :bio, :phone, :picture, presence: true
end
