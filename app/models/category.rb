#encode utf-8
class Category < ActiveRecord::Base
  attr_accessible :description, :name, :image
  has_many :posts

  validates_presence_of :name
  mount_uploader :image, AvatarUploader

  default_scope order("created_at DESC")
end
