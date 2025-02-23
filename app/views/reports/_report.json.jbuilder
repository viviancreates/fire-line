json.extract! report, :id, :user_id, :generated_at, :format, :language, :content, :created_at, :updated_at
json.url report_url(report, format: :json)
