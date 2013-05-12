class TasksController < ApplicationController
  # GET /tasks
  # GET /tasks.json
  def index
    sort_column = params[:sort] || session[:sort]
    session[:sort] = Task.sortable_by?(sort_column) ? sort_column : "name"

    session[:desc] = (params[:desc] == "true") if params[:desc].present?
    @unsorted_tasks = Task.active.includes(:materials, :services)
    @tasks = @unsorted_tasks.sorted_by(session[:sort], session[:desc])

    respond_to do |format|
      format.html 
      format.json { render json: @tasks }
    end
  end

  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @task }
    end
    render :action => "edit"
  end

  def new
    @task = Task.new

    respond_to do |format|
      format.html 
      format.json { render json: @task }
    end
  end

  def edit
    @task = Task.find(params[:id])
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
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to edit_task_path(@task), notice: 'Task was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :no_content }
    end
  end

end
