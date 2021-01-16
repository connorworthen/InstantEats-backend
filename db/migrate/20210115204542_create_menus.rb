class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
