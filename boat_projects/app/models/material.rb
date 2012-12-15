class Material < ActiveRecord::Base
  attr_accessible :description, :dimensions, :inventory, :location, :material, :minimum_purchase, :package_count, :price, :shipping_price, :type, :units

  has_many :projects, :through => :projects_materials
end
