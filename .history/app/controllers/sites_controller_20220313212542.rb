class SitesController < ApplicationController
  before_action :set_site, only: %i[ show edit update destroy ]

  # GET /sites or /sites.json
  def index
    @sites = @client.sites
  end

  # GET /sites/1 or /sites/1.json
  def show
  end

  # GET /sites/new
  def new
    @site = @client.sites.build
  end

  # GET /sites/1/edit
  def edit
  end

  # POST /sites or /sites.json
  def create
    @site = @client.sites.build(site_params)

    respond_to do |format|
      if @site.save
        redirect_to(@site.client) 
      else
        render action: 'new'
    end
  end

  # PATCH/PUT /sites/1 or /sites/1.json
  def update
    respond_to do |format|
      if @site.update(site_params)
        redirect_to(site.client)
        
      else
        render action: 'edit'
      end
    end
  end

  # DELETE /sites/1 or /sites/1.json
  def destroy
    @site.destroy

    redirect_to @client
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site
      @site = @client.sites.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def site_params
      params.require(:site).permit(:name, :number, :phone, :address, :city, :state, :zip, :acct_mgr, :branch_mgr)
    end
end
