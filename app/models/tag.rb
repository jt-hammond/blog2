class Tag < ApplicationRecord
  has_many :tag_junctions
  has_many :posts, :through => :tag_junctions
end
