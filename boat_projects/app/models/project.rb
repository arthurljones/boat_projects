class Project < ActiveRecord::Base
  attr_accessible :completed, :cruising_priority, :daysail_priority, :description, :helpers_needed, :hours_estimate, :liveaboard_priority, :name, :notes, :obsolete, :_destroy 
  attr_accessor :_destroy

  has_many :project_materials, :dependent => :destroy
  has_many :project_services, :dependent => :destroy
  has_many :materials, :through => :project_materials
  has_many :services, :through => :project_services
  has_many :dependencies, :through => :projects_dependencies, :class_name => 'Project', :foreign_key => 'dependency_id'

  default_scope where(:completed => false, :obsolete => false)

  attr_accessible :project_materials_attributes
  accepts_nested_attributes_for :project_materials, :allow_destroy => true

  attr_accessible :project_services_attributes
  accepts_nested_attributes_for :project_services, :allow_destroy => true

  def cost
    cost = project_materials.map(&:cost).inject(:+)
    return cost || 0
  end

end
