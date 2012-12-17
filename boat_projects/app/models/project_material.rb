class ProjectMaterial < ActiveRecord::Base
  attr_accessible :material_id, :project_id, :quantity

  validates :quantity, :numericality => true

  belongs_to :project
  belongs_to :material

  def cost
  	puts "Inventory: #{material.inventory if not material.blank?}"
  	puts project

  	return 0 if material.blank?
  	return 0 if quantity.blank?

	needed = quantity - material.inventory
	return 0 if needed <= 0

	needed = material.minimum_purchase if needed < material.package_count
	needed = (needed / material.package_count).ceil * material.package_count
	return (material.price + material.shipping_price) * needed || 0
  end
end
