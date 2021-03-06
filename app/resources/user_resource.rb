class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :first_name, :string
  attribute :last_name, :string
  attribute :email, :string

  # Direct associations

  has_many   :comments

  has_many   :events

  has_many   :rsvps,
             foreign_key: :users_id

  # Indirect associations
end
