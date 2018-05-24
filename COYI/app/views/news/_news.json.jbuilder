json.extract! news, :id, :title, :story, :published, :created_at, :updated_at
json.url news_url(news, format: :json)
