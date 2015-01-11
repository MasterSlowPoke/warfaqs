json.dataslates do
  json.array!(@dataslates) do |dataslate|
    json.extract! dataslate, :id, :title, :role
    json.picture dataslate.picture.url(:thumb)
    json.url dataslate_url(dataslate, format: :json)
  end
end
