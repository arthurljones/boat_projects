class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :type
      t.string :description
      t.string :dimensions
      t.string :material
      t.string :units
      t.decimal :inventory
      t.decimal :price
      t.int :minimum_purchase
      t.int :package_count
      t.decimal :shipping_price
      t.string :location

      t.timestamps
    end
  end
end
