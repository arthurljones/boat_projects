require 'csv'
require 'awesome_print'

desc "Import teams from csv file"

task :import => [:environment] do
	file = "db/projects.csv"
  Project.delete_all
	CSV.foreach(file, :headers => true) do |row|
    row = row.to_hash.with_indifferent_access
    row.delete :unused
    Project.create row do |obj|
      obj.id = row[:id]
    end
	end

  file = "db/materials.csv"
  Material.delete_all
  CSV.foreach(file, :headers => true) do |row|
    row = row.to_hash.with_indifferent_access
    row.delete :unused
    Material.create row do |obj|
      obj.id = row[:id]
    end
  end

end