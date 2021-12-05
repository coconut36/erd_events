class CreateRsvps < ActiveRecord::Migration[6.0]
  def change
    create_table :rsvps do |t|
      t.integer :users_id
      t.integer :events_id
      t.string :response

      t.timestamps
    end
  end
end
