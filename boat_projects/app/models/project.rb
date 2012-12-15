class Project < ActiveRecord::Base
  attr_accessible :completed, :cruising_priority, :daysail_priority, :description, :helpers_needed, :hours_estimate, :liveabord_priority, :name, :notes, :obsolete

  has_many :materials, :through => :projects_materials
  has_many :services, :through => :projects_services
  has_many :dependencies, :through => :projects_dependencies, :class_name => 'Project', :foreign_key => 'dependency_id'

end
