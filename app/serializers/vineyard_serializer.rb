class VineyardSerializer < ActiveModel::Serializer
  attributes :id, :vineyard_name, :email, :website_url, :phone, :address, :city, :region, :postcode, :country, :specialty, :description, :pet_friendly, :holiday, :tours, :events, :family_friendly, :cover_image, :image_one, :image_two, :image_three, :image_four, :comments, :latitude, :longitude, :average_rating

  belongs_to :user
  def average_rating

    return object.comments.length if object.comments.length === 0

    total_rating = object.comments.reduce(0) do |sum, comment|
      sum + comment.rating
    end
    (total_rating / object.comments.length).round

  end


end
