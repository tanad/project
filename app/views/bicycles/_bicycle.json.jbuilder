json.extract! bicycle, :id, :title, :description, :price, :category, :available, :created_at, :updated_at
json.url bicycle_url(bicycle, format: :json)