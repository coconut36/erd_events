class AddUserReferenceToRsvps < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :rsvps, :users, column: :users_id
    add_index :rsvps, :users_id
    change_column_null :rsvps, :users_id, false
  end
end
