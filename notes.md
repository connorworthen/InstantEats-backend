      t.string :first
      t.string :last
      t.string :email
      t.string :password_digest
      t.string :phone_number

      t.timestamps


      t.string :name
      t.string :category
      t.text :address
      t.integer :phone_number
      t.text :hours
      t.string :price
      t.text :eta
      t.float :distance

      t.timestamps


      t.string :name
      t.text :description
      t.decimal :price
      t.references :restaurant, foreign_key: true

      t.timestamps
