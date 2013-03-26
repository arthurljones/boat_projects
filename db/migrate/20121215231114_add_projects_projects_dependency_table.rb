class AddProjectsProjectsDependencyTable < ActiveRecord::Migration
  def up
  	create_table :projects_dependencies do |t|
  		t.integer :project_id
  		t.integer :dependency_id
  	end
  end

  def down
  	drop_table :projects_dependencies
  end
end
