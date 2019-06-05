class CreateAttendees < ActiveRecord::Migration[5.1]
  def change
    create_table :attendees do |t|
      t.references :event, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true
      t.references :role, foreign_key: true, index: true

      t.timestamps
    end
  end
end
