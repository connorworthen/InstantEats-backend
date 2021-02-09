class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :category
      t.text :address
      t.integer :phone_number
      t.text :hours
      t.string :price
      t.text :eta
      t.float :distance

      t.timestamps
    end
  end
end
