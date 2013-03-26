class MaterialsController < ApplicationController
  # GET /materials
  # GET /materials.json
  def default_column
    "category"
  end

  def index
    if params[:sort] == "total_price"
      @materials = Material.order("price + shipping_price " + sort_direction)
    else
      @materials = Material.order(sort_column(Material) + " " + sort_direction)
    end
  end

  # GET /materials/1
  # GET /materials/1.json
  def show
    @material = Material.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @material }
    end
  end

  # GET /materials/new
  # GET /materials/new.json
  def new
    @material = Material.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @material }
    end
  end

  # GET /materials/1/edit
  def edit
    @material = Material.find(params[:id])
  end

  # POST /materials
  # POST /materials.json
  def create
    @material = Material.new(params[:material])

    respond_to do |format|
      if @material.save
        format.html { redirect_to edit_material_path(@material), notice: 'Material was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /materials/1
  # PUT /materials/1.json
  def update
    @material = Material.find(params[:id])

    respond_to do |format|
      if @material.update_attributes(params[:material])
        format.html { redirect_to edit_material_path(@material), notice: 'Material was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material = Material.find(params[:id])
    @material.destroy

    respond_to do |format|
      format.html { redirect_to materials_url }
      format.json { head :no_content }
    end
  end  

  private
  def sort_column(model_class)
    if params[:sort] == "total_price"
      return "total_price" 
    else 
      return super
    end
  end

end
