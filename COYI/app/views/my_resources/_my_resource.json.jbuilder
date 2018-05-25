json.extract! my_resource, :id, :title, :description, :user_id, :status, :created_at, :updated_at
json.url my_resource_url(my_resource, format: :json)
