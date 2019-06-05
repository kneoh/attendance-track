class CreateHandouts < ActiveRecord::Migration[5.1]
  def change
    create_table :handouts do |t|
      t.references :user, foreign_key: true, index: true
      t.references :session, foreign_key: true, index: true
      t.string :url

      t.timestamps
    end
  end
end
