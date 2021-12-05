class Event < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :rsvps,
             :foreign_key => "events_id",
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    event_name
  end

end
