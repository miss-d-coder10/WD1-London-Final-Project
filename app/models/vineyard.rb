class Vineyard < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments
  
  mount_uploader :cover_image, ImageUploader
  mount_uploader :image_one, ImageUploader
  mount_uploader :image_two, ImageUploader
  mount_uploader :image_three, ImageUploader
  mount_uploader :image_four, ImageUploader
end
