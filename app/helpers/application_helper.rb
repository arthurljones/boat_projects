module ApplicationHelper
  def sortable(model_class, column, title = nil)
    title ||= model_class.human_attribute_name(column)
    is_current_column = (column.to_s == session[:sort])
    desc = !(is_current_column and session[:desc])
    link = link_to title, {:sort => column, :desc => desc}
    if is_current_column
        icon = session[:desc] ? "icon-chevron-down" : "icon-chevron-up"
    	"<i class=#{icon}> #{link}</i>".html_safe
    else
    	link
    end
  end
end
