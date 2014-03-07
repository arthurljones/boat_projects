module ApplicationHelper
  def sortable(model_class, column, title = nil)
    title ||= model_class.human_attribute_name(column)
    current = (column.to_s == session[:sort])
    asc = current && session[:desc]
    title << "&nbsp" + content_tag(:span, nil, :class => "glyphicon glyphicon-chevron-#{session[:desc] ? "down" : "up"}") if current
    content_tag(:a, title.html_safe, :href => url_for(:sort => column, :desc => !asc))
  end
end
