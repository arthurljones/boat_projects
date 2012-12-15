class AddProjectsMaterialsJoinTable < ActiveRecord::Migration
  def up
  	create_table :projects_materials do |t|
  		t.integer :project_id
  		t.integer :material_id
  		t.decimal :quantity
  	end
  end

  def down
  	drop_table :projects_materials
  end
end
