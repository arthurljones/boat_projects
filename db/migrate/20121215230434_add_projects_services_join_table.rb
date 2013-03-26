class AddProjectsServicesJoinTable < ActiveRecord::Migration
  def up
  	create_table :projects_services do |t|
  		t.integer :project_id
  		t.integer :service_id
  		t.decimal :quantity
  	end
  end

  def down
  	drop_table :projects_services
  end
end
