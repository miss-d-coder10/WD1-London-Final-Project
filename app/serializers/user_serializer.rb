class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :bio, :profile_image

  def profile_image
    object.profile_image.url
  end
end
