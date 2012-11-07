class Post < ActiveRecord::Base
  attr_accessible :content, :title, :category_id
  belongs_to :category
  accepts_nested_attributes_for :category, :allow_destroy => true, :reject_if => :all_blank
  delegate :name, :to => :category, :prefix => true, :allow_nil => true

  validates_presence_of :title, :content

  default_scope order("id DESC")

end
