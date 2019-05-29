json.extract! user, :id, :full_name, :email, :organisation, :role_user_id, :created_at, :updated_at
json.url user_url(user, format: :json)
