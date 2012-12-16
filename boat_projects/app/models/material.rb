class Material < ActiveRecord::Base
  attr_accessible :description, :dimensions, :inventory, :location, :material, :minimum_purchase, :package_count, :price, :shipping_price, :category, :units

  has_many :project_materials
  has_many :projects, :through => :project_materials
end
