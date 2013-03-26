class FixProjectsPriorityNames < ActiveRecord::Migration
	def change
		rename_column :projects, :liveaboard_priority, :liveaboard_priority
	end
end
