class JoinusereventsController < ApplicationController
  before_action :set_joinuserevent, only: [:show, :update, :destroy]

  # GET /joinuserevents
  def index
    @joinuserevents = Joinuserevent.all

    render json: @joinuserevents
  end

  # GET /joinuserevents/1
  def show
    render json: @joinuserevent
  end

  # POST /joinuserevents
  def create
    @joinuserevent = Joinuserevent.new(joinuserevent_params)

    if @joinuserevent.save
      render json: @joinuserevent, status: :created, location: @joinuserevent
    else
      render json: @joinuserevent.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /joinuserevents/1
  def update
    if @joinuserevent.update(joinuserevent_params)
      render json: @joinuserevent
    else
      render json: @joinuserevent.errors, status: :unprocessable_entity
    end
  end

  # DELETE /joinuserevents/1
  def destroy
    @joinuserevent.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joinuserevent
      @joinuserevent = Joinuserevent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def joinuserevent_params
      params.require(:joinuserevent).permit(:ingamename, :inparty, :waitlist, :user_id, :event_id)
    end
end
