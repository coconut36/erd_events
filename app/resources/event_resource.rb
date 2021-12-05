class EventResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :event_name, :string
  attribute :start_datetime, :datetime
  attribute :end_datetime, :datetime
  attribute :location, :string
  attribute :details, :string
  attribute :photo, :string
  attribute :user_id, :integer

  # Direct associations

  # Indirect associations

end
