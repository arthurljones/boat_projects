module TasksHelper
	def materials_for_select(selected_material_id)
		collection = Material.all.sort_by(&:name).to_a
		options_from_collection_for_select(collection, :id, :name, :selected => selected_material_id)
	end
end
