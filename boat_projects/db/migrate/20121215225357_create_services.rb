class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :provider
      t.string :phone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
