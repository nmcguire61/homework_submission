json.array!(@viewings) do |viewing|
  json.extract! viewing, :id, :viewing_type, :when_viewed
  json.url viewing_url(viewing, format: :json)
end
