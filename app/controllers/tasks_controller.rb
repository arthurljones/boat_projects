class TasksController < ApplicationController

  before_action :load_resource

  def index
    sort_column = params[:sort] || session[:sort]
    session[:sort] = Task.sortable_by?(sort_column) ? sort_column : "name"

    session[:desc] = (params[:desc] == "true") if params[:desc].present?
    @tasks = @tasks.active.sorted_by(session[:sort], session[:desc])

    respond_to do |format|
      format.html 
      format.json { render json: @tasks }
    end
  end

  def show
    respond_to do |format|
      format.html 
      format.json { render json: @task }
    end
    render :action => "edit"
  end

  def new
    respond_to do |format|
      format.html 
      format.json { render json: @task }
    end
  end

  def edit
    render :partial => "form"
  end

  def create
    @task = Task.new(params[:task])

    respond_to do |format|
      if @task.save
        format.html { redirect_to edit_task_path(@task), notice: 'Task was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    respond_to do |format|
      format.html do
        if @task.update_attributes(task_params)
          redirect_to(edit_task_path(@task), notice: 'Task was successfully updated.')
        else
          render action: "edit"
        end
      end
    end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :no_content }
    end
  end

private

  def task_params
    params.require(:task).permit(
      :completed, :description, :helpers_needed, :hours_estimate,:name, :notes, :obsolete, :_destroy,
      :task_materials_attributes => [:id, :material_id, :_destroy],
      :task_services_attributes => [:id, :service_id, :_destroy]
    )
  end

  def load_resource
    @tasks = Task.all.includes{[task_materials, task_materials.material, task_services, task_services.service]}
    if %w(new create).include?(action_name)
      @task = @tasks.new
    else
      @task = @tasks.find(params[:id]) if params[:id].present?
    end

  end

end
