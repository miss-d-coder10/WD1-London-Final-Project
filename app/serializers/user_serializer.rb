class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :bio, :profile_image
  has_one :vineyard
  has_many :comments

  def profile_image
    object.profile_image.url
  end

end
