class CreateOrganisations < ActiveRecord::Migration[5.1]
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :abbr
      t.string :email
      t.string :url

      t.timestamps
    end
  end
end
