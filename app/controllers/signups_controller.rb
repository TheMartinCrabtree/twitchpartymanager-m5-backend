class SignupsController < ApplicationController
  before_action :set_signup, only: [:show, :update, :destroy]
  def update
  end

  def create
  end

  def show
      @signup = Joinuserevent.where(user_id: params[:id] )
  
      render json: @signup
  end

  def destroy

  end

  private
  def set_signup
    @signup = Joinuserevent.where(userid: params[:user_id])
  end

  def signup_params
    params.require(:signup).permit(:user_id, :event_id, :id)
  end

end
