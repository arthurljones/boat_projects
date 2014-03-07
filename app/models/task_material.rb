class TaskMaterial < ActiveRecord::Base
  #attr_accessible :material_id, :task_id, :quantity

  belongs_to :task
  belongs_to :material

  validates :quantity, :numericality => { :greater_than_or_equal_to => 0 }
  validates :task, :material, :presence => true

  def cost
  	needed = [quantity - material.inventory, material.minimum_purchase].min
  	needed = (needed / material.package_count).ceil * material.package_count
  	[(material.price + material.shipping_price) * needed, 0].max
  end
end
