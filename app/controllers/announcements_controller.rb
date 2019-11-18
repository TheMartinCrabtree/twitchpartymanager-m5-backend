class AnnouncementsController < ApplicationController
  before_action :set_announcement, only: [:show, :update, :destroy]

  # GET /announcements
  def index
    @announcements = Announcement.all

    render json: {announcements: @announcements}
  end

  # GET /announcements/1
  def show
    render json: @announcement
  end

  # POST /announcements
  def create
    @announcement = Announcement.new(announcement_params)
    
    if @announcement.save
      render json: {announcement: @announcement}
    else
      render json: @announcement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /announcements/1
  def update
    if @announcement.update(announcement_params)
      render json: @announcement
    else
      render json: @announcement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /announcements/1
  def destroy
     @annref = Announcement.find(params[:id].to_s)
    @annref.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_announcement
      @announcement = Announcement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def announcement_params
      params.require(:announcement).permit(:title, :bodytext, :id)
    end
end
