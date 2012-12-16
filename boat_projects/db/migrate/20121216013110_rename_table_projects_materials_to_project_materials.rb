class RenameTableProjectsMaterialsToProjectMaterials < ActiveRecord::Migration
  def change
  	rename_table :projects_materials, :project_materials
  end
end
