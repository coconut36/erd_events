class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.string :location
      t.text :details
      t.string :photo
      t.integer :user_id

      t.timestamps
    end
  end
end
