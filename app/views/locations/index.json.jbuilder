json.array!(@locations) do |location|
  json.extract! location, :name, :location_type, :street1, :street2, :city, :country, :post_code, :address_full, :longitude, :latitude
  json.url location_url(location, format: :json)
end
