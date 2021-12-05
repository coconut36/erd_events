class AddEventReferenceToRsvps < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :rsvps, :events, column: :events_id
    add_index :rsvps, :events_id
    change_column_null :rsvps, :events_id, false
  end
end
