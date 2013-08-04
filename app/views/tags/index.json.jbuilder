json.array!(@tags) do |tag|
  json.extract! tag, :tag_code, :tagable_id, :tagable_type
  json.url tag_url(tag, format: :json)
end
