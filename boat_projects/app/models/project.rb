class Project < ActiveRecord::Base
  attr_accessible :completed, :cruising_priority, :daysail_priority, :description, :helpers_needed, :hours_estimate, :liveaboard_priority, :name, :notes, :obsolete

  has_many :project_materials
  has_many :project_services
  has_many :materials, :through => :project_materials
  has_many :services, :through => :project_services
  has_many :dependencies, :through => :projects_dependencies, :class_name => 'Project', :foreign_key => 'dependency_id'

end
