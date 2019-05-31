class CreateJoinTableSessionTrainer < ActiveRecord::Migration[5.1]
  def change
    create_join_table :sessions, :users do |t|
      t.index [:session_id, :user_id]
      t.index [:user_id, :session_id]
    end
  end
end
