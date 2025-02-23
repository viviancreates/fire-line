json.extract! air_quality_reading, :id, :timestamp, :aqi, :source, :created_at, :updated_at
json.url air_quality_reading_url(air_quality_reading, format: :json)
