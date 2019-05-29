json.extract! session, :id, :title, :learning_objectives, :start_date, :duration, :picture_url, :event_id, :created_at, :updated_at
json.url session_url(session, format: :json)
