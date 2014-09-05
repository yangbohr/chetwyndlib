class IsosController < ApplicationController
  before_action :set_iso, only: [:show, :edit, :update, :destroy]

  # GET /isos
  # GET /isos.json
  def index
    @isos = Iso.all
  end

  # GET /isos/1
  # GET /isos/1.json
  def show
  end

  # GET /isos/new
  def new
    @iso = Iso.new
  end

  # GET /isos/1/edit
  def edit
  end

  # POST /isos
  # POST /isos.json
  def create
    @iso = Iso.new(iso_params)

    respond_to do |format|
      if @iso.save
        format.html { redirect_to @iso, notice: 'Iso was successfully created.' }
        format.json { render action: 'show', status: :created, location: @iso }
      else
        format.html { render action: 'new' }
        format.json { render json: @iso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /isos/1
  # PATCH/PUT /isos/1.json
  def update
    respond_to do |format|
      if @iso.update(iso_params)
        format.html { redirect_to @iso, notice: 'Iso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @iso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /isos/1
  # DELETE /isos/1.json
  def destroy
    @iso.destroy
    respond_to do |format|
      format.html { redirect_to isos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iso
      @iso = Iso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iso_params
      params.require(:iso).permit(:title, :tage)
    end
end
