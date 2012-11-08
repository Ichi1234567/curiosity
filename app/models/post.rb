#encode utf-8
class Post < ActiveRecord::Base
  attr_accessible :content, :title, :category_id, :avatar

  belongs_to :category
  accepts_nested_attributes_for :category, :allow_destroy => true, :reject_if => :all_blank
  delegate :name, :to => :category, :prefix => true, :allow_nil => true

  validates_presence_of :title, :content

  mount_uploader :avatar, AvatarUploader

  default_scope order("created_at DESC")

end
