class AddDefaultsToMaterials < ActiveRecord::Migration
  def change
  	change_column :materials, :category, :string, {:default => ""}
  	change_column :materials, :description, :string, {:default => ""}
  	change_column :materials, :dimensions, :string, {:default => ""}
  	change_column :materials, :material, :string, {:default => ""}
  	change_column :materials, :units, :string, {:default => "Each"}
  	change_column :materials, :inventory, :decimal, {:precision => 10, :scale => 2, :default => 0}
  	change_column :materials, :price, :decimal, {:precision => 10, :scale => 2, :default => 0}
  	change_column :materials, :minimum_purchase, :integer, {:default => 1}
  	change_column :materials, :package_count, :integer, {:default => 1}
  	change_column :materials, :shipping_price, :decimal, {:precision => 10, :scale => 2, :default => 0}
  end
end
