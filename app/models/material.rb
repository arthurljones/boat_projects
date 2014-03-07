class Material < ActiveRecord::Base
  #attr_accessible :description, :dimensions, :inventory, :location, :material, :minimum_purchase, :package_count, :price, :shipping_price, :category, :units

  has_many :task_materials
  has_many :tasks, :through => :task_materials

  def name

  	name = ""

  	name << category unless category.blank?
  	name << ", #{description}" unless description.blank?
  	name << ", #{dimensions}" unless dimensions.blank?
  	name << " (#{material})" unless material.blank?
  	name << " #{toCurrency price + shipping_price}/#{units}"
  	name << ", #{stripZeroes minimum_purchase} min" unless minimum_purchase.blank? or minimum_purchase <= 1
  	name << ", #{stripZeroes inventory} avail" unless inventory.blank? or inventory <= 0

  	return name
  end

  private
  def stripZeroes(number)
  	ActionController::Base.helpers.number_with_precision number, :strip_insignificant_zeros => true
  end

  def toCurrency(number)
  	ActionController::Base.helpers.number_to_currency number
  end
end
