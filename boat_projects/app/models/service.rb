class Service < ActiveRecord::Base
  attr_accessible :description, :email, :name, :phone, :price, :provider, :website
end
