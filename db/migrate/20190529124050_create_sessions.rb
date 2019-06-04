class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.string :title
      t.text :learning_objectives
      t.datetime :start_date
      t.integer :duration
      t.string :picture_url
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
