class RenameProjectsToTasks < ActiveRecord::Migration
  def change
  	rename_table :projects, :tasks
  	rename_table :project_materials, :task_materials
  	rename_table :project_services, :task_services
  end
end
