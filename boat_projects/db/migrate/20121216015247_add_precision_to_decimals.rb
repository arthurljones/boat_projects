class AddPrecisionToDecimals < ActiveRecord::Migration
  def change
    change_column :materials, :inventory, :decimal, { :scale => 2, :precision => 10 }
    change_column :materials, :price, :decimal, { :scale => 2, :precision => 10 }
    change_column :materials, :shipping_price, :decimal, { :scale => 2, :precision => 10 }

    change_column :projects, :hours_estimate, :decimal, { :scale => 2, :precision => 10 }

    change_column :services, :price, :decimal, { :scale => 2, :precision => 10 }

    change_column :project_materials, :quantity, :decimal, { :scale => 2, :precision => 10 }
    change_column :project_services, :quantity, :decimal, { :scale => 2, :precision => 10 }
  end
end
