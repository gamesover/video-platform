json.extract! video, :id, :title, :description, :organization_id, :created_at, :updated_at
json.url video_url(video, format: :json)
