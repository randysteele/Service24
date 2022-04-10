json.extract! technician, :id, :name, :tech_id, :phone, :email, :address, :created_at, :updated_at
json.url technician_url(technician, format: :json)
