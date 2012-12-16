class FixProjectsPriorityNames < ActiveRecord::Migration
	def change
		rename_column :projects, :liveabord_priority, :liveaboard_priority
	end
end
