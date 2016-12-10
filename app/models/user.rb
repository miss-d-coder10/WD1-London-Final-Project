class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_confirmation, presence: true, on: :create

  has_one :vineyard
  has_many :comments
  
  mount_uploader :profile_image, ImageUploader

end
