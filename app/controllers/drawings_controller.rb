class DrawingsController < ApplicationController
  before_action :set_drawing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /drawings
  # GET /drawings.json
  def index
    if params[:search].present?
      @search = Drawing.search do
        keywords params[:search] 
        paginate :page => params[:page] || 1, :per_page => 15 
      end
      @drawings = @search.results
    else 
      order = params[:order] || :created_at
      @drawings = Drawing.order("#{order} DESC").paginate(:page => params[:page], :per_page => 15)
    end
  end

  def search
    @drawings = Drawing.search do
      keywords 
    end
  end

  # GET /drawings/1
  # GET /drawings/1.json
  def show
  end

  # GET /drawings/new
  def new
    @drawing = Drawing.new
  end

  # GET /drawings/1/edit
  def edit
  end

  # POST /drawings
  # POST /drawings.json
  def create
    @drawing = Drawing.new(drawing_params)
    respond_to do |format|
      if @drawing.save
        @drawing.update_attribute(:last_editor, current_user.account)
        format.html { redirect_to @drawing, notice: 'Drawing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @drawing }
      else
        format.html { render action: 'new' }
        format.json { render json: @drawing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drawings/1
  # PATCH/PUT /drawings/1.json
  def update
    respond_to do |format|
      if @drawing.update(drawing_params)
        @drawing.update_attribute(:last_editor, current_user.account)
        format.html { redirect_to @drawing, notice: 'Drawing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @drawing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drawings/1
  # DELETE /drawings/1.json
  def destroy
    @drawing.destroy
    respond_to do |format|
      format.html { redirect_to drawings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drawing
      @drawing = Drawing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drawing_params
      params.require(:drawing).permit(:discipline, :draft_order, :tembec_drawing, :vender, :vendor_drawing_number, :sheet_number, :revision, :title, :date, :equipment_number, :cad, :paper, :notes, :hanging, :attachment)
    end
end
