class Post < ApplicationRecord
  belongs_to :admin_user
  belongs_to :category

  has_many :tag_junctions
  has_many :tags, :through => :tag_junctions
  accepts_nested_attributes_for :tags
  has_many :comments
end
