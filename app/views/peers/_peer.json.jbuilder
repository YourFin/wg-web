json.extract! peer, :id, :name, :public_key, :is_connected, :endpoint_id, :created_at, :updated_at
json.url peer_url(peer, format: :json)
