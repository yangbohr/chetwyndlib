class SafetyManualsController < ApplicationController
  before_action :set_safety_manual, only: [:show, :edit, :update, :destroy]

  # GET /safety_manuals
  # GET /safety_manuals.json
  def index
    @safety_manuals = SafetyManual.all
  end

  # GET /safety_manuals/1
  # GET /safety_manuals/1.json
  def show
  end

  # GET /safety_manuals/new
  def new
    @safety_manual = SafetyManual.new
  end

  # GET /safety_manuals/1/edit
  def edit
  end

  # POST /safety_manuals
  # POST /safety_manuals.json
  def create
    @safety_manual = SafetyManual.new(safety_manual_params)

    respond_to do |format|
      if @safety_manual.save
        format.html { redirect_to @safety_manual, notice: 'Safety manual was successfully created.' }
        format.json { render action: 'show', status: :created, location: @safety_manual }
      else
        format.html { render action: 'new' }
        format.json { render json: @safety_manual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /safety_manuals/1
  # PATCH/PUT /safety_manuals/1.json
  def update
    respond_to do |format|
      if @safety_manual.update(safety_manual_params)
        format.html { redirect_to @safety_manual, notice: 'Safety manual was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @safety_manual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /safety_manuals/1
  # DELETE /safety_manuals/1.json
  def destroy
    @safety_manual.destroy
    respond_to do |format|
      format.html { redirect_to safety_manuals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_safety_manual
      @safety_manual = SafetyManual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def safety_manual_params
      params.require(:safety_manual).permit(:title)
    end
end
