json.array!(@reputations) do |reputation|
  json.extract! reputation, :id, :to_id, :from_id, :server_id, :rating, :message
  json.url reputation_url(reputation, format: :json)
end
