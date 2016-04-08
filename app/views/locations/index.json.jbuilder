json.array!(@locations) do |location|
  json.extract! location, :id, :name, :city, :state, :zip, :country
  json.url location_url(location, format: :json)
end
