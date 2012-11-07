class Post < ActiveRecord::Base
  attr_accessible :content, :title
  default_scope order("id DESC")

end
