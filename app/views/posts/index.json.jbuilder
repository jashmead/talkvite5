json.array!(@posts) do |post|
  json.extract! post, :user_id, :talk_id, :post_type, :content
  json.url post_url(post, format: :json)
end
