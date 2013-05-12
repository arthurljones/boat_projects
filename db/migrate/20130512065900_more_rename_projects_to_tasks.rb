class MoreRenameProjectsToTasks < ActiveRecord::Migration
  def change
  	rename_column :task_materials, :project_id, :task_id
  	rename_column :task_services, :project_id, :task_id
  end
end
