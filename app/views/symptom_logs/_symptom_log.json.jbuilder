json.extract! symptom_log, :id, :user_id, :symptom, :severity, :log_time, :notes, :created_at, :updated_at
json.url symptom_log_url(symptom_log, format: :json)
