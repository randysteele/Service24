json.extract! client, :id, :name, :billing_address, :site_id, :created_at, :updated_at
json.url client_url(client, format: :json)
