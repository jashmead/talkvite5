json.array!(@talks) do |talk|
  json.extract! talk, :user_id, :subject, :description
  json.url talk_url(talk, format: :json)
end
