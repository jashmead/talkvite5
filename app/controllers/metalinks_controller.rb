class MetalinksController < ApplicationController
  before_action :set_metalink, only: [:show, :edit, :update, :destroy]

  # GET /metalinks
  # GET /metalinks.json
  def index
    @metalinks = Metalink.all
  end

  # GET /metalinks/1
  # GET /metalinks/1.json
  def show
  end

  # GET /metalinks/new
  def new
    @metalink = Metalink.new
  end

  # GET /metalinks/1/edit
  def edit
  end

  # POST /metalinks
  # POST /metalinks.json
  def create
    @metalink = Metalink.new(metalink_params)

    respond_to do |format|
      if @metalink.save
        format.html { redirect_to @metalink, notice: 'Metalink was successfully created.' }
        format.json { render action: 'show', status: :created, location: @metalink }
      else
        format.html { render action: 'new' }
        format.json { render json: @metalink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metalinks/1
  # PATCH/PUT /metalinks/1.json
  def update
    respond_to do |format|
      if @metalink.update(metalink_params)
        format.html { redirect_to @metalink, notice: 'Metalink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @metalink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metalinks/1
  # DELETE /metalinks/1.json
  def destroy
    @metalink.destroy
    respond_to do |format|
      format.html { redirect_to metalinks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metalink
      @metalink = Metalink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metalink_params
      params.require(:metalink).permit(:metafile_from_id, :metafile_to_id, :metalink_type, :metalink_data)
    end
end
