class CommentSerializer < ActiveModel::Serializer
  attributes :id, :rating, :body
  has_one :user
  has_one :vineyard
end
