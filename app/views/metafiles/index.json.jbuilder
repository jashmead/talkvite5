json.array!(@metafiles) do |metafile|
  json.extract! metafile, :name, :description, :meta_type, :meta_data, :meta_controls
  json.url metafile_url(metafile, format: :json)
end
