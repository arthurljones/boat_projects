class TaskDependency < ActiveRecord::Base
  attr_accessible :dependency, :task
  attr_accessible :dependency_id, :task_id

  belongs_to :task
  belongs_to :dependency, :class => "Task", :foreign_key => :dependency_id
end
