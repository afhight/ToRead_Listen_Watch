json.array!(@podcasts) do |podcast|
  json.extract! podcast, :id, :title, :link
  json.url podcast_url(podcast, format: :json)
end
