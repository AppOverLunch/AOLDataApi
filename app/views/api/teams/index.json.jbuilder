json.array!(@api_teams) do |api_team|
  json.extract! api_team, :id
  json.url api_team_url(api_team, format: :json)
end
