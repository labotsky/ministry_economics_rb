json.array!(@sliders) do |slider|
  json.extract! slider, :id, :image
  json.url slider_url(slider, format: :json)
end
