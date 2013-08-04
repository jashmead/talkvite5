class FilepathsController < ApplicationController
  before_action :set_filepath, only: [:show, :edit, :update, :destroy]

  # GET /filepaths
  # GET /filepaths.json
  def index
    @filepaths = Filepath.all
  end

  # GET /filepaths/1
  # GET /filepaths/1.json
  def show
  end

  # GET /filepaths/new
  def new
    @filepath = Filepath.new
  end

  # GET /filepaths/1/edit
  def edit
  end

  # POST /filepaths
  # POST /filepaths.json
  def create
    @filepath = Filepath.new(filepath_params)

    respond_to do |format|
      if @filepath.save
        format.html { redirect_to @filepath, notice: 'Filepath was successfully created.' }
        format.json { render action: 'show', status: :created, location: @filepath }
      else
        format.html { render action: 'new' }
        format.json { render json: @filepath.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filepaths/1
  # PATCH/PUT /filepaths/1.json
  def update
    respond_to do |format|
      if @filepath.update(filepath_params)
        format.html { redirect_to @filepath, notice: 'Filepath was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @filepath.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filepaths/1
  # DELETE /filepaths/1.json
  def destroy
    @filepath.destroy
    respond_to do |format|
      format.html { redirect_to filepaths_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filepath
      @filepath = Filepath.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filepath_params
      params.require(:filepath).permit(:metafile_id, :pathname, :file_type)
    end
end
