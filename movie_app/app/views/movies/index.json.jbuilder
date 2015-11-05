json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :about, :review
  json.url movie_url(movie, format: :json)
end
