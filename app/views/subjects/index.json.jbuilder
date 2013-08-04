json.array!(@subjects) do |subject|
  json.extract! subject, :metafile_id, :talk_id, :subject_type, :content
  json.url subject_url(subject, format: :json)
end
