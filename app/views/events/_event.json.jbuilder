json.extract! event, :id, :name, :start_date, :end_date, :description, :url, :created_at, :updated_at
json.url event_url(event, format: :json)
