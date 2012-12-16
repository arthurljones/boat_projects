class ProjectMaterialsController < ApplicationController
  # GET /project_materials
  # GET /project_materials.json
  def index
    @project_materials = ProjectMaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_materials }
    end
  end

  # GET /project_materials/1
  # GET /project_materials/1.json
  def show
    @project_material = ProjectMaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_material }
    end
  end

  # GET /project_materials/new
  # GET /project_materials/new.json
  def new
    @project_material = ProjectMaterial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project_material }
    end
  end

  # GET /project_materials/1/edit
  def edit
    @project_material = ProjectMaterial.find(params[:id])
  end

  # POST /project_materials
  # POST /project_materials.json
  def create
    @project_material = ProjectMaterial.new(params[:project_material])

    respond_to do |format|
      if @project_material.save
        format.html { redirect_to @project_material, notice: 'Project material was successfully created.' }
        format.json { render json: @project_material, status: :created, location: @project_material }
      else
        format.html { render action: "new" }
        format.json { render json: @project_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /project_materials/1
  # PUT /project_materials/1.json
  def update
    @project_material = ProjectMaterial.find(params[:id])

    respond_to do |format|
      if @project_material.update_attributes(params[:project_material])
        format.html { redirect_to @project_material, notice: 'Project material was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_materials/1
  # DELETE /project_materials/1.json
  def destroy
    @project_material = ProjectMaterial.find(params[:id])
    @project_material.destroy

    respond_to do |format|
      format.html { redirect_to project_materials_url }
      format.json { head :no_content }
    end
  end
end
