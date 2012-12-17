class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index

    if params[:sort] == "cost"
      if params[:direction] == "asc"
        @projects = Project.all.sort_by { |e| e.cost }
      else
        @projects = Project.all.sort_by { |e| -e.cost }
      end
    else
      @projects = Project.order(sort_column(Project) + " " + sort_direction)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end



  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
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

  # PUT /projects/1
  # PUT /projects/1.json
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

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end

  private
  def sort_column(model_class)
    if params[:sort] == "cost"
      return "cost" 
    else 
      return super
    end
  end

end
