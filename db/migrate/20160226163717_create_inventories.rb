class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :Product
      t.string :Category
      t.string :Location
      t.string :SerialNumber
      t.string :LotNumber
      t.date :ExpirationDate
      t.string :Quantity
      t.string :Notes

      t.timestamps null: false
    end
  end
end
