json.extract! site, :id, :name, :number, :phone, :address, :acct_mgr, :branch_mgr, :workorder_id, :created_at, :updated_at
json.url site_url(site, format: :json)
