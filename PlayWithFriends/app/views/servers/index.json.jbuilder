json.array!(@servers) do |server|
  json.extract! server, :id, :owner, :game_id, :up_votes, :down_votes, :title
  json.url server_url(server, format: :json)
end
