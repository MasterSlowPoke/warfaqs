json.(@dataslate, :id, :title, :role)
json.picture @dataslate.picture.url(:thumb)
json.most_recent_source @dataslate.most_recent_source.title 
json.previous_sources @dataslate.previous_sources do |previous_source|
  json.title previous_source.title
end
