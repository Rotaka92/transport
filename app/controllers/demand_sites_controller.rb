class DemandSitesController < ApplicationController
  before_action :set_demand_site, only: [:show, :edit, :update, :destroy]

  # GET /demand_sites
  # GET /demand_sites.json
  def index
    @demand_sites = DemandSite.all
  end

  # GET /demand_sites/1
  # GET /demand_sites/1.json
  def show
  end

  # GET /demand_sites/new
  def new
    @demand_site = DemandSite.new
  end

  # GET /demand_sites/1/edit
  def edit
  end

  # POST /demand_sites
  # POST /demand_sites.json
  def create
    @demand_site = DemandSite.new(demand_site_params)

    respond_to do |format|
      if @demand_site.save
        format.html { redirect_to @demand_site, notice: 'Demand site was successfully created.' }
        format.json { render :show, status: :created, location: @demand_site }
      else
        format.html { render :new }
        format.json { render json: @demand_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demand_sites/1
  # PATCH/PUT /demand_sites/1.json
  def update
    respond_to do |format|
      if @demand_site.update(demand_site_params)
        format.html { redirect_to @demand_site, notice: 'Demand site was successfully updated.' }
        format.json { render :show, status: :ok, location: @demand_site }
      else
        format.html { render :edit }
        format.json { render json: @demand_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demand_sites/1
  # DELETE /demand_sites/1.json
  def destroy
    @demand_site.destroy
    respond_to do |format|
      format.html { redirect_to demand_sites_url, notice: 'Demand site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demand_site
      @demand_site = DemandSite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demand_site_params
      params.require(:demand_site).permit(:name, :demand)
    end
end
