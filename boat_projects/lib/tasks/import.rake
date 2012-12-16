require 'csv'
require 'awesome_print'

desc "Import teams from csv file"

task :import => [:environment] do
	file = "db/projects.csv"
  Project.delete_all
	CSV.foreach(file, :headers => true) do |row|
    #"ID","Name","Description","Hours Estimate","Notes","Helpers Needed","Liveaboard Priority","Daysail Priority","Coastal Crusing Priority","Ocean Passage Priority","Completed","Superceded"
    #  attr_accessible :completed, :cruising_priority, :daysail_priority, :description, :helpers_needed, :hours_estimate, :liveabord_priority, :name, :notes, :obsolete
    row = row.to_hash.with_indifferent_access
    row.delete :unused
    Project.create row do |project|
      project.id = row[:id]
    end
	end
end