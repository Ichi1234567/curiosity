#encode utf-8
class Category < ActiveRecord::Base
  attr_accessible :description, :name, :avatar
  has_many :posts

  validates_presence_of :name
end
