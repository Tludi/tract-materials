class MaterialUnitsController < ApplicationController
  before_action :set_material_unit, only: [:show, :edit, :update, :destroy]

  # GET /material_units
  # GET /material_units.json
  def index
    @material_units = MaterialUnit.all
  end

  # GET /material_units/1
  # GET /material_units/1.json
  def show
  end

  # GET /material_units/new
  def new
    @material_unit = MaterialUnit.new
  end

  # GET /material_units/1/edit
  def edit
  end

  # POST /material_units
  # POST /material_units.json
  def create
    @material_unit = MaterialUnit.new(material_unit_params)

    respond_to do |format|
      if @material_unit.save
        format.html { redirect_to @material_unit, notice: 'Material unit was successfully created.' }
        format.json { render :show, status: :created, location: @material_unit }
      else
        format.html { render :new }
        format.json { render json: @material_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_units/1
  # PATCH/PUT /material_units/1.json
  def update
    respond_to do |format|
      if @material_unit.update(material_unit_params)
        format.html { redirect_to @material_unit, notice: 'Material unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_unit }
      else
        format.html { render :edit }
        format.json { render json: @material_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_units/1
  # DELETE /material_units/1.json
  def destroy
    @material_unit.destroy
    respond_to do |format|
      format.html { redirect_to material_units_url, notice: 'Material unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_unit
      @material_unit = MaterialUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_unit_params
      params.require(:material_unit).permit(:unitType)
    end
end
