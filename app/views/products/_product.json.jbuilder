json.extract! product, :id, :name, :color, :category, :price, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
