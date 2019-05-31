class CreateJoinTableSessionTopic < ActiveRecord::Migration[5.1]
  def change
    create_join_table :sessions, :topics do |t|
      t.index [:session_id, :topic_id]
      t.index [:topic_id, :session_id]
    end
  end
end
