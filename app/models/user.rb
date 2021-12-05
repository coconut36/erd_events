class User < ApplicationRecord
  # Direct associations

  has_many   :rsvps,
             :foreign_key => "users_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    first_name
  end

end
