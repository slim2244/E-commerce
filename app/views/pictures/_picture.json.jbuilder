json.extract! picture, :id, :name, :description, :price, :condition, :administrator_id, :created_at, :updated_at
json.url picture_url(picture, format: :json)
