class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :sort_column, :sort_direction

  def default_column
  	"name"
  end

  def sort_column(model_class)
    model_class.column_names.include?(params[:sort]) ? params[:sort] : default_column
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
