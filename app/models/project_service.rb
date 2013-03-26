class ProjectService < ActiveRecord::Base
  attr_accessible :project_id, :quantity, :service_id

  belongs_to :project
  belongs_to :service
end
