class AddDefaultsToProjects < ActiveRecord::Migration
  def change
  	change_column :projects, :name, :string, {:default => ""}
  	change_column :projects, :description, :string, {:default => ""}
  	change_column :projects, :hours_estimate, :decimal, {:precision => 10, :scale => 2, :default => 1}
  	change_column :projects, :notes, :string, {:default => ""}
  	change_column :projects, :helpers_needed, :integer, {:default => 0}
  	change_column :projects, :liveaboard_priority, :integer, {:default => 5}
  	change_column :projects, :daysail_priority, :integer, {:default => 5}
  	change_column :projects, :cruising_priority, :integer, {:default => 5}
  	change_column :projects, :completed, :boolean, {:default => false}
  	change_column :projects, :obsolete, :boolean, {:default => false}
  end
end
