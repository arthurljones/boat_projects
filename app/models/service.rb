class Service < ActiveRecord::Base
  #attr_accessible :description, :email, :name, :phone, :price, :provider, :website

  has_many :task_services, :inverse_of => :service
  has_many :tasks, :through => :task_services
end
