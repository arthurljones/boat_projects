class Service < ActiveRecord::Base
  attr_accessible :description, :email, :name, :phone, :price, :provider, :website

  has_many :projects, :through => :projects_services
end
