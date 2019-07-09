class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.string :name, null: false
      t.string :year, null: false
      t.string :author, null: false
      t.text :description
      t.string :theme

      t.timestamps null: false
    end
  end
end
