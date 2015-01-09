json.dataslates do
  json.array!(@dataslates) do |dataslate|
    json.extract! dataslate, :id, :title, :role
    json.url dataslate_url(dataslate, format: :json)
  end
end
