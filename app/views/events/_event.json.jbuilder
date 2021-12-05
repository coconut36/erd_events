json.extract! event, :id, :event_name, :start_datetime, :end_datetime,
              :location, :details, :photo, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
