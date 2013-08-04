json.array!(@filepaths) do |filepath|
  json.extract! filepath, :metafile_id, :pathname, :file_type
  json.url filepath_url(filepath, format: :json)
end
