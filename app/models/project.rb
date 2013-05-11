class Project < ActiveRecord::Base
  attr_accessible :completed, :cruising_priority, :daysail_priority, :description, :helpers_needed, :hours_estimate, :liveaboard_priority, :name, :notes, :obsolete, :_destroy 
  attr_accessor :_destroy

  has_many :project_materials, :dependent => :destroy
  has_many :project_services, :dependent => :destroy
  has_many :materials, :through => :project_materials
  has_many :services, :through => :project_services
  has_many :dependencies, :through => :projects_dependencies, :class_name => 'Project', :foreign_key => 'dependency_id'

  scope :complete, where{completed == true}
  scope :incomplete, where{completed == false}
  scope :obsolete, where{obsolete == true}
  scope :current, where{obsolete == false}
  scope :active, incomplete.current

  attr_accessible :project_materials_attributes
  accepts_nested_attributes_for :project_materials, :allow_destroy => true

  attr_accessible :project_services_attributes
  accepts_nested_attributes_for :project_services, :allow_destroy => true

  def cost
    cost = project_materials.map(&:cost).inject(:+)
    return cost || 0
  end

  def self.cost
    cost = all.map(&:cost).inject(:+)
    return cost || 0
  end

  def self.sorted_by(attribute, desc=true)
    ap attribute
    ap desc
    if column_names.include? attribute
      order_string = "#{attribute} #{desc ? 'desc' : 'asc'}"
      ap order_string
      order(order_string).all
    else
      result = all.sort_by(&attribute.to_sym)
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
