class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    sort_column = params[:sort] || session[:sort]
    session[:sort] = Project.sortable_by?(sort_column) ? sort_column : "name"

    session[:desc] = (params[:desc] == "true") if params[:desc].present?
    @unsorted_projects = Project.active.includes(:materials, :services)
    @projects = @unsorted_projects.sorted_by(session[:sort], session[:desc])

    respond_to do |format|
      format.html 
      format.json { render json: @projects }
    end
  end

  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @project }
    end
  end

  def new
    @project = Project.new

    respond_to do |format|
      format.html 
      format.json { render json: @project }
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(params[:project])

    respond_to do |format|
      if @project.save
        format.html { redirect_to edit_project_path(@project), notice: 'Project was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to edit_project_path(@project), notice: 'Project was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end

end
