class RenameTableProjectsServicesToProjectServices < ActiveRecord::Migration
  def change
  	rename_table :projects_services, :project_services
  end
end
