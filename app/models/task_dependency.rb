class TaskDependency < ActiveRecord::Base
  #attr_accessible :dependency, :task, :dependency_id, :task_id

  belongs_to :task
  belongs_to :dependency, :class_name => "Task", :foreign_key => :dependency_id
end
