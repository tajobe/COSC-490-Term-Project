json.array!(@invites) do |invite|
  json.extract! invite, :id, :to_id, :from_id, :server_id, :message, :read, :active, :accepted
  json.url invite_url(invite, format: :json)
end
