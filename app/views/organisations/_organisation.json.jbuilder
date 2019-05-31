json.extract! organisation, :id, :abbr, :name, :email, :url, :created_at, :updated_at
json.url organisation_url(organisation, format: :json)
