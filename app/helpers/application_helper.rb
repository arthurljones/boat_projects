module ApplicationHelper
  def sortable(model_class, column, title = nil)
    title ||= model_class.human_attribute_name(column)
    direction = sort_direction == "desc" ? "asc" : "desc"
    icon = (direction == "asc" ? "icon-chevron-down" : "icon-chevron-up")
    link = link_to title, {:sort => column, :direction => direction}
    if (column.to_s == sort_column(model_class).to_s)
    	puts "Sort Column: #{column}"
    	return "<i class=#{icon}> #{link}</i>".html_safe
    else
    	return link
    end
  end
end
