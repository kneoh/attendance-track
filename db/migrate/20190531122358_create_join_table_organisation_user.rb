class CreateJoinTableOrganisationUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :organisations, :users do |t|
      t.index [:organisation_id, :user_id]
      t.index [:user_id, :organisation_id]
    end
  end
end
