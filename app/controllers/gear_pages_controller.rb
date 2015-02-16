class GearPagesController < ApplicationController
  before_action :set_gear_page, only: [:show, :edit, :update, :destroy]

  # GET /gear_pages
  # GET /gear_pages.json
  def index
    @gear_pages = GearPage.all
  end

  # GET /gear_pages/1
  # GET /gear_pages/1.json
  def show
    @gear_pages = GearPage.find(params[:id])
    @artist = Artist.new
  end

  # GET /gear_pages/new
  def new
    @gear_page = GearPage.new
  end

  # GET /gear_pages/1/edit
  def edit
  end

  # POST /gear_pages
  # POST /gear_pages.json
  def create
    @gear_page = GearPage.new(gear_page_params)

    respond_to do |format|
      if @gear_page.save
        format.html { redirect_to @gear_page, notice: 'Gear page was successfully created.' }
        format.json { render :show, status: :created, location: @gear_page }
      else
        format.html { render :new }
        format.json { render json: @gear_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gear_pages/1
  # PATCH/PUT /gear_pages/1.json
  def update
    respond_to do |format|
      if @gear_page.update(gear_page_params)
        format.html { redirect_to @gear_page, notice: 'Gear page was successfully updated.' }
        format.json { render :show, status: :ok, location: @gear_page }
      else
        format.html { render :edit }
        format.json { render json: @gear_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gear_pages/1
  # DELETE /gear_pages/1.json
  def destroy
    @gear_page.destroy
    respond_to do |format|
      format.html { redirect_to gear_pages_url, notice: 'Gear page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gear_page
      @gear_page = GearPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gear_page_params
      params.require(:gear_page).permit(:name, :description, :brand_id, :artist_id, :genre_id, :profile_image, :ancestry, :parent_id)
    end
end
