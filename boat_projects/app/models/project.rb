class Project < ActiveRecord::Base
  attr_accessible :completed, :cruising_priority, :daysail_priority, :description, :helpers_needed, :hours_estimate, :liveabord_priority, :name, :notes, :obsolete
end
