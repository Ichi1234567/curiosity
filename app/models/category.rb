#encode utf-8
class Category < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :posts

  validates_presence_of :name
  #validates :name, :presence => {:message => "不能空白"}
end
