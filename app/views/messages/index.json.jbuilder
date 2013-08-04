json.array!(@messages) do |message|
  json.extract! message, :message_type, :content
  json.url message_url(message, format: :json)
end
