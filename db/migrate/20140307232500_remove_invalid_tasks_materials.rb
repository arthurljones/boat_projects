class RemoveInvalidTasksMaterials < ActiveRecord::Migration
  def change
    TaskMaterial.where{(task_id == 0) | (task_id == nil)}.delete_all
  end
end
