json.(@dataslate, :id, :title, :role)
json.picture @dataslate.picture.url(:thumb)
