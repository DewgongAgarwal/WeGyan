json.extract! post, :id, :i_id, :s_id, :description, :hrs_per_week, :timings, :created_at, :updated_at
json.url post_url(post, format: :json)
