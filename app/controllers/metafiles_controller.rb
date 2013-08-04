class MetafilesController < ApplicationController
  before_action :set_metafile, only: [:show, :edit, :update, :destroy]

  # GET /metafiles
  # GET /metafiles.json
  def index
    @metafiles = Metafile.all
  end

  # GET /metafiles/1
  # GET /metafiles/1.json
  def show
  end

  # GET /metafiles/new
  def new
    @metafile = Metafile.new
  end

  # GET /metafiles/1/edit
  def edit
  end

  # POST /metafiles
  # POST /metafiles.json
  def create
    @metafile = Metafile.new(metafile_params)

    respond_to do |format|
      if @metafile.save
        format.html { redirect_to @metafile, notice: 'Metafile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @metafile }
      else
        format.html { render action: 'new' }
        format.json { render json: @metafile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metafiles/1
  # PATCH/PUT /metafiles/1.json
  def update
    respond_to do |format|
      if @metafile.update(metafile_params)
        format.html { redirect_to @metafile, notice: 'Metafile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @metafile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metafiles/1
  # DELETE /metafiles/1.json
  def destroy
    @metafile.destroy
    respond_to do |format|
      format.html { redirect_to metafiles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metafile
      @metafile = Metafile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metafile_params
      params.require(:metafile).permit(:name, :description, :meta_type, :meta_data, :meta_controls)
    end
end
