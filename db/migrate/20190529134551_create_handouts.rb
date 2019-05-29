class CreateHandouts < ActiveRecord::Migration[5.1]
  def change
    create_table :handouts do |t|
      t.string :url
      t.references :trainer, foreign_key: true
      t.references :session, foreign_key: true

      t.timestamps
    end
  end
end
