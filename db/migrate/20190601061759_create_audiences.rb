class CreateAudiences < ActiveRecord::Migration[5.1]
  def change
    create_table :audiences, do |t|
      t.references :event, foreign_key: true, index: true
      t.references :role, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true
    end
  end
end
