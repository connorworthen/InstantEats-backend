class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :category
      t.string :price
      t.string :hours
      t.float :distance

      t.timestamps
    end
  end
end
