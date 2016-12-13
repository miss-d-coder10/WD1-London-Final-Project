class Vineyard < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments
  geocoded_by :postcode
  after_validation :geocode

end
