class CreateModels < ActiveRecord::Migration
  def change
     create_table :tickets do |t|
      t.integer :film_id
      t.string :name
      t.string :email
      t.string :phone
      t.timestamps null: false
    end
    create_table :films do |t|
      t.string :title
      t.string :synopsis
      t.float :price
      t.boolean :active
      t.timestamps null: false
    end
  end
end
