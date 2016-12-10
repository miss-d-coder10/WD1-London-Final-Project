class CommentSerializer < ActiveModel::Serializer
  attributes :id, :rating, :body, :user, :vineyard
  has_one :user
  has_one :vineyard
end
