class RsvpResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :users_id, :integer
  attribute :events_id, :integer
  attribute :response, :string

  # Direct associations

  # Indirect associations

end
