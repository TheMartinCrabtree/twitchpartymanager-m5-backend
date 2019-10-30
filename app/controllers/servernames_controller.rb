class ServernamesController < ApplicationController
  before_action :set_servername, only: [:show, :update, :destroy]

  # GET /servernames
  def index
    @servernames = Servername.all

    render json: @servernames
  end

  # GET /servernames/1
  def show
    render json: @servername
  end

  # POST /servernames
  def create
    @servername = Servername.new(servername_params)

    if @servername.save
      render json: @servername, status: :created, location: @servername
    else
      render json: @servername.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /servernames/1
  def update
    if @servername.update(servername_params)
      render json: @servername
    else
      render json: @servername.errors, status: :unprocessable_entity
    end
  end

  # DELETE /servernames/1
  def destroy
    @servername.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servername
      @servername = Servername.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def servername_params
      params.require(:servername).permit(:serveraddress, :servernote)
    end
end
