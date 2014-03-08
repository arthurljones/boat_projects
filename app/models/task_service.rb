class TaskService < ActiveRecord::Base
  #attr_accessible :task_id, :quantity, :service_id

  belongs_to :task, :inverse_of => :task_services
  belongs_to :service, :inverse_of => :task_services
end
