class TaskMaterial < ActiveRecord::Base
  #attr_accessible :material_id, :task_id, :quantity

  belongs_to :task, :inverse_of => :task_materials
  belongs_to :material, :inverse_of => :task_materials

  validates :quantity, :numericality => { :greater_than_or_equal_to => 0 }
  validates :task, :material, :presence => true

  def needed
    needed = (quantity - material.inventory)
    needed = [needed, material.minimum_purchase].max if needed > 0
    (needed / material.package_count).ceil * material.package_count
  end

  def cost
    (material.price + material.shipping_price) * needed
  end

end
