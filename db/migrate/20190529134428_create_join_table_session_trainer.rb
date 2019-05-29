class CreateJoinTableSessionTrainer < ActiveRecord::Migration[5.1]
  def change
    create_join_table :sessions, :trainers do |t|
      t.index [:session_id, :trainer_id]
      t.index [:trainer_id, :session_id]
    end
  end
end
