json.extract! location, :id, :name, :long, :lat, :created_at, :updated_at
json.url location_url(location, format: :json)
