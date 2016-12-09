class Vineyard < ApplicationRecord
  belongs_to :user, optional: true
end
