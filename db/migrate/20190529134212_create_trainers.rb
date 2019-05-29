class CreateTrainers < ActiveRecord::Migration[5.1]
  def change
    create_table :trainers do |t|
      t.references :user, foreign_key: true, index: true
      t.string :category

      t.timestamps
    end
  end
end
