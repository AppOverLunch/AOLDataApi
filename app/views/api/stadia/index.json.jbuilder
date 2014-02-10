json.array!(@api_stadia) do |api_stadium|
  json.extract! api_stadium, :id
  json.url api_stadium_url(api_stadium, format: :json)
end
