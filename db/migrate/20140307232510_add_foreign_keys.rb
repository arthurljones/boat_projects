class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :task_materials, :tasks
    add_foreign_key :task_materials, :materials
    
    add_foreign_key :task_services, :tasks
    add_foreign_key :task_services, :services
  end
end
