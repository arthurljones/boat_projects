class Service < ActiveRecord::Base
  attr_accessible :description, :email, :name, :phone, :price, :provider, :website

  has_many :project_services
  has_many :projects, :through => :project_services
end
