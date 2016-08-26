json.extract! bicycle, :id, :title, :string, :description, :image_url, :price, :category, :available, :created_at, :updated_at
json.url bicycle_url(bicycle, format: :json)