class VoipsController < ApplicationController
  before_action :set_voip, only: [:show, :update, :destroy]

  # GET /voips
  def index
    @voips = Voip.all

    render json: @voips
  end

  # GET /voips/1
  def show
    render json: @voip
  end

  # POST /voips
  def create
    @voip = Voip.new(voip_params)

    if @voip.save
      render json: @voip, status: :created, location: @voip
    else
      render json: @voip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /voips/1
  def update
    if @voip.update(voip_params)
      render json: @voip
    else
      render json: @voip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /voips/1
  def destroy
    @voip.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voip
      @voip = Voip.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def voip_params
      params.require(:voip).permit(:servername, :voipaddress, :servernote)
    end
end
