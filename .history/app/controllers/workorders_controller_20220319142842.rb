class WorkordersController < ApplicationController
  before_action :set_client
  before_action :set_site
  before_action :set_workorder, only: %i[ show edit update destroy ]

  # GET /workorders or /workorders.json
  def index
    @workorders = @site.workorders
  end

  # GET /workorders/1 or /workorders/1.json
  def show
  end

  # GET /workorders/new
  def new
    @workorder = @client.site.workorders.build
  end

  # GET /workorders/1/edit
  def edit
  end

  # POST /workorders or /workorders.json   @site = @client.sites.build(site_params)
  def create
    @workorder = @site.workorders.build(workorder_params)

    respond_to do |format|
      if @workorder.save
        format.html { redirect_to workorder_url(@workorder.site), notice: "Workorder was successfully created." }
        format.json { render :show, status: :created, location: @workorder }
      else
        render action: 'new'
      end
    end
  end

  # PATCH/PUT /workorders/1 or /workorders/1.json
  def update
    respond_to do |format|
      if @workorder.update(workorder_params)
        format.html { redirect_to workorder_url(@workorder.site), notice: "Workorder was successfully updated." }
        format.json { render :show, status: :ok, location: @workorder }
      else
        render action: 'edit'
      end
    end
  end

  # DELETE /workorders/1 or /workorders/1.json
  def destroy
    @workorder.destroy

    respond_to do |format|
      format.html { redirect_to workorders_url, notice: "Workorder was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workorder
      @workorder = @site.workorders.find(params[:id])
    end

    def set_client
      @client = Client.find(params[:client_id])
    end


    def set_site
      @site = Site.find(params[:id])
    end


    # Only allow a list of trusted parameters through.
    def workorder_params
      params.require(:workorder).permit(:category, :caller, :PO, :work_requested, :schedule_date, :completion_date, :site_id)
    end
end
