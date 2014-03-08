module TasksHelper
  def materials_picker_source
    options = Material.all.to_a.map{ |material| [material.name, material.id] }.sort_by(&:first)
    content_tag(:div, :class => "hidden", "data-materials-select-source" => true) do
      select_tag(:material_id, options_for_select(options), :prompt => 'Select Material')
    end
  end

	def materials_picker(form, material)
    material_id = material.try(:id)
    material_name = material.try(:name) || "Nothing"
    content_tag(:div, "data-materials-select-target" => material_id || true) do
      text = h(material_name)
      input = form.hidden_field(:material_id, :value => material_id)
      text + input
    end
	end
end
