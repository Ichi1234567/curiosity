json.status "ok"
json.category do |json|
  json.(@category, :id, :name, :description, :image)
end