class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :category
      t.text :address
      t.integer :phone_number
      t.text :hours
      t.string :price
      t.float :distance
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
