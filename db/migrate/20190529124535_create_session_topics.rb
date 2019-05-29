class CreateSessionTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :session_topics, id: false do |t|
      t.references :session, foreign_key: true, index: true
      t.references :topic, foreign_key: true, index: true

      t.timestamps
    end
  end
end
