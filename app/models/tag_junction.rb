class TagJunction < ApplicationRecord
  belongs_to :post
  belongs_to :tag
end
