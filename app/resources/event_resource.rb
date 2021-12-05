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

  has_many   :comments

  has_many   :rsvps,
             foreign_key: :events_id

  belongs_to :user

  # Indirect associations

end
