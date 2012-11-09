json.post do |json|
  json.(@post, :id, :title, :content)
  if @post.avatar
    json.avatar do |json|
      json.url @post.avatar.url
      if @post.avatar.thumb.url
        json.thumb_url @post.avatar.thumb.url
      end
    end
  end
  if @post.category_id
    json.category Category.find(@post.category_id).name
  end
end