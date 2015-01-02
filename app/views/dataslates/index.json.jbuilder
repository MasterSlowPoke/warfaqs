json.array!(@dataslates) do |dataslate|
  json.extract! dataslate, :id
  json.url dataslate_url(dataslate, format: :json)
end
