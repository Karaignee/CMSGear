class MaincatsController < ApplicationController
  before_action :set_maincat, only: [:show, :edit, :update, :destroy]

  # GET /maincats
  # GET /maincats.json
  def index
    @maincats = Maincat.all
  end

  # GET /maincats/1
  # GET /maincats/1.json
  def show
  end

  # GET /maincats/new
  def new
    @maincat = Maincat.new
  end

  # GET /maincats/1/edit
  def edit
  end

  # POST /maincats
  # POST /maincats.json
  def create
    @maincat = Maincat.new(maincat_params)

    respond_to do |format|
      if @maincat.save
        format.html { redirect_to @maincat, notice: 'Maincat was successfully created.' }
        format.json { render :show, status: :created, location: @maincat }
      else
        format.html { render :new }
        format.json { render json: @maincat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maincats/1
  # PATCH/PUT /maincats/1.json
  def update
    respond_to do |format|
      if @maincat.update(maincat_params)
        format.html { redirect_to @maincat, notice: 'Maincat was successfully updated.' }
        format.json { render :show, status: :ok, location: @maincat }
      else
        format.html { render :edit }
        format.json { render json: @maincat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maincats/1
  # DELETE /maincats/1.json
  def destroy
    @maincat.destroy
    respond_to do |format|
      format.html { redirect_to maincats_url, notice: 'Maincat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maincat
      @maincat = Maincat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maincat_params
      params.require(:maincat).permit(:name, :description)
    end
end
