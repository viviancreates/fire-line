json.extract! report_recipient, :id, :report_id, :email, :role, :created_at, :updated_at
json.url report_recipient_url(report_recipient, format: :json)
