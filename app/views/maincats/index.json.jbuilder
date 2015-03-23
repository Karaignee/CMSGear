json.array!(@maincats) do |maincat|
  json.extract! maincat, :id, :name, :description
  json.url maincat_url(maincat, format: :json)
end
