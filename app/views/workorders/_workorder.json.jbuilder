json.extract! workorder, :id, :categorycaller, :PO, :work_requested, :schedule_date, :completion_date, :created_at, :updated_at
json.url workorder_url(workorder, format: :json)
