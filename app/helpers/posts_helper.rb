module PostsHelper
  def category_options
    Category.all.map {|c| [c.name, c.id]}
  end

  def find_category(id)
    Category.find(id).name
  end
end
