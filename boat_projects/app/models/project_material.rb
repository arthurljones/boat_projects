class ProjectMaterial < ActiveRecord::Base
  attr_accessible :material_id, :project_id, :quantity

  belongs_to :project
  belongs_to :material
end
