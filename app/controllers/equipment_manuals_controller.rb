class EquipmentManualsController < ApplicationController
  before_action :set_equipment_manual, only: [:show, :edit, :update, :destroy]

  # GET /equipment_manuals
  # GET /equipment_manuals.json
  def index
    @equipment_manuals = EquipmentManual.all
  end

  # GET /equipment_manuals/1
  # GET /equipment_manuals/1.json
  def show
  end

  # GET /equipment_manuals/new
  def new
    @equipment_manual = EquipmentManual.new
  end

  # GET /equipment_manuals/1/edit
  def edit
  end

  # POST /equipment_manuals
  # POST /equipment_manuals.json
  def create
    @equipment_manual = EquipmentManual.new(equipment_manual_params)

    respond_to do |format|
      if @equipment_manual.save
        format.html { redirect_to @equipment_manual, notice: 'Equipment manual was successfully created.' }
        format.json { render action: 'show', status: :created, location: @equipment_manual }
      else
        format.html { render action: 'new' }
        format.json { render json: @equipment_manual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment_manuals/1
  # PATCH/PUT /equipment_manuals/1.json
  def update
    respond_to do |format|
      if @equipment_manual.update(equipment_manual_params)
        format.html { redirect_to @equipment_manual, notice: 'Equipment manual was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @equipment_manual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_manuals/1
  # DELETE /equipment_manuals/1.json
  def destroy
    @equipment_manual.destroy
    respond_to do |format|
      format.html { redirect_to equipment_manuals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment_manual
      @equipment_manual = EquipmentManual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_manual_params
      params.require(:equipment_manual).permit(:title, :equipment_number, :company, :model)
    end
end
