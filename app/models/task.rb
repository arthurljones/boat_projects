class Task < ActiveRecord::Base
  #attr_accessible :completed, :cruising_priority, :daysail_priority, :description, :helpers_needed, :hours_estimate, :liveaboard_priority, :name, :notes, :obsolete, :_destroy

  has_many :task_materials, :dependent => :destroy, :inverse_of => :task
  has_many :materials, :through => :task_materials

  has_many :task_services, :dependent => :destroy, :inverse_of => :task
  has_many :services, :through => :task_services

  has_many :task_dependencies, :dependent => :destroy, :inverse_of => :task
  has_many :dependencies, :through => :task_dependencies
  has_many :dependents, :through => :task_dependencies, :source => :dependencies

  scope :complete, -> {
    where(:completed => true)
  }

  scope :incomplete, -> {
    where(:completed => false)
  }

  scope :obsolete, -> {
    where(:obsolete => true)
  }

  scope :current, -> {
    where(:obsolete => false)
  }

  scope :active, -> {
    incomplete.current
  }

  #attr_accessible :task_materials_attributes, :materials_attributes
  accepts_nested_attributes_for :task_materials, :allow_destroy => true
  accepts_nested_attributes_for :materials, :allow_destroy => true

  #attr_accessible :task_services_attributes, :services_attributes
  accepts_nested_attributes_for :task_services, :allow_destroy => true
  accepts_nested_attributes_for :services, :allow_destroy => true

  def cost
    task_materials.to_a.sum(&:cost)
  end

  def self.sorted_by(attribute, desc=true)
    if column_names.include? attribute
      order_string = "#{attribute} #{desc ? 'desc' : 'asc'}"
      ap order_string
      order(order_string).to_a
    else
      result = all.to_a.sort_by(&attribute.to_sym)
      result.reverse! if desc
      result
    end
  end

  def self.sortable_columns
    column_names + ["cost"]
  end

  def self.sortable_by?(column)
    sortable_columns.include?(column)
  end
end
