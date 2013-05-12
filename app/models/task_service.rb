class TaskService < ActiveRecord::Base
  attr_accessible :task_id, :quantity, :service_id

  belongs_to :task
  belongs_to :service
end
