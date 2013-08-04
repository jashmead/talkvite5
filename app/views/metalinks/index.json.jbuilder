json.array!(@metalinks) do |metalink|
  json.extract! metalink, :metafile_from_id, :metafile_to_id, :metalink_type, :metalink_data
  json.url metalink_url(metalink, format: :json)
end
