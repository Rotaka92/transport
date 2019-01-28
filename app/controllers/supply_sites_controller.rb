class SupplySitesController < ApplicationController
  before_action :set_supply_site, only: [:show, :edit, :update, :destroy]

  # GET /supply_sites
  # GET /supply_sites.json
  def index
    @supply_sites = SupplySite.all
  end

  # GET /supply_sites/1
  # GET /supply_sites/1.json
  def show
  end

  # GET /supply_sites/new
  def new
    @supply_site = SupplySite.new
  end

  # GET /supply_sites/1/edit
  def edit
  end

  # POST /supply_sites
  # POST /supply_sites.json
  def create
    @supply_site = SupplySite.new(supply_site_params)

    respond_to do |format|
      if @supply_site.save
        format.html { redirect_to @supply_site, notice: 'Supply site was successfully created.' }
        format.json { render :show, status: :created, location: @supply_site }
      else
        format.html { render :new }
        format.json { render json: @supply_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supply_sites/1
  # PATCH/PUT /supply_sites/1.json
  def update
    respond_to do |format|
      if @supply_site.update(supply_site_params)
        format.html { redirect_to @supply_site, notice: 'Supply site was successfully updated.' }
        format.json { render :show, status: :ok, location: @supply_site }
      else
        format.html { render :edit }
        format.json { render json: @supply_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supply_sites/1
  # DELETE /supply_sites/1.json
  def destroy
    @supply_site.destroy
    respond_to do |format|
      format.html { redirect_to supply_sites_url, notice: 'Supply site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply_site
      @supply_site = SupplySite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supply_site_params
      params.require(:supply_site).permit(:name, :capacity)
    end
end
