class VineyardSerializer < ActiveModel::Serializer
  attributes :id, :vineyard_name, :email, :website_url, :phone, :address, :city, :region, :postcode, :country, :specialty, :description, :pet_friendly, :holiday, :tours, :events, :family_friendly, :cover_image, :image_one, :image_two, :image_three, :image_four
  has_one :user
  has_many :comments
  
  def cover_image
    object.cover_image.url
  end

  def image_one
    object.image_one.url
  end

  def image_two
    object.image_two.url
  end

  def image_three
    object.image_three.url
  end

  def image_four
    object.image_four.url
  end




end
