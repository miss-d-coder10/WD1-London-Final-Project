class VineyardSerializer < ActiveModel::Serializer
  attributes :id, :vineyard_name, :email, :website_url, :phone, :address, :city, :region, :postcode, :country, :specialty, :description, :pet_friendly, :holiday, :tours, :events, :family_friendly, :cover_image, :image_one, :image_two, :image_three, :image_four, :comments, :latitude, :longitude, :average_rating

  has_many :comments

  def average_rating
    total_rating = 0;
    object.comments.each do |comment|
      total_rating = total_rating + comment.rating
    end
    return (total_rating / object.comments.length).round
  end


end
