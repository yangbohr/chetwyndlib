class InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show, :edit, :update, :destroy]

  # GET /instruments
  # GET /instruments.json
  def index
    if params[:search].present?
      @search = Instrument.search do
        keywords params[:search] 
        paginate :page => params[:page] || 1, :per_page => 15 
      end
      @instruments = @search.results
    else 
      @instruments = Instrument.order(:item).paginate(:page => params[:page], :per_page => 15)
    end
  end

  # GET /instruments/1
  # GET /instruments/1.json
  def show
  end

  # GET /instruments/new
  def new
    @instrument = Instrument.new
  end

  # GET /instruments/1/edit
  def edit
  end

  # POST /instruments
  # POST /instruments.json
  def create
    @instrument = Instrument.new(instrument_params)

    respond_to do |format|
      if @instrument.save
        @insturment.update_attribute(:remark, current_user.account)
        format.html { redirect_to @instrument, notice: 'Instrument was successfully created.' }
        format.json { render action: 'show', status: :created, location: @instrument }
      else
        format.html { render action: 'new' }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instruments/1
  # PATCH/PUT /instruments/1.json
  def update
    respond_to do |format|
      if @instrument.update(instrument_params)
        @insturment.update_attribute(:remark, current_user.account)
        format.html { redirect_to @instrument, notice: 'Instrument was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instruments/1
  # DELETE /instruments/1.json
  def destroy
    @instrument.destroy
    respond_to do |format|
      format.html { redirect_to instruments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instrument
      @instrument = Instrument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instrument_params
      params[:instrument].permit!
    end
end
