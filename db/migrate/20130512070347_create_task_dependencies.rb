class CreateTaskDependencies < ActiveRecord::Migration
  def change
  	drop_table :projects_dependencies
    create_table :task_dependencies do |t|
      t.integer :task_id
      t.integer :dependency_id

      t.timestamps
    end
  end
end
