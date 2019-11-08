class SignupsController < ApplicationController
  before_action :set_signup, only: [:show, :update, :destroy, :cancel]
  def update
  end

  def create
  end

  def show
      if(params[:id])
        @signup = Joinuserevent.where(user_id: params[:id] )
        # @signup = signup.map do |event_ref| 
        #     return event_ref.event
        # end
        render json: @signup
      end
      
  end

  def destroy
    

  end

  def cancel
    
    @eventArr = Joinuserevent.where(user_id: params[:user_id], event_id: params[:event_id])
    @eventArr.each do |event| event.destroy end 
  end


  private
  def set_signup
    @signup = Joinuserevent.where(userid: params[:user_id])
  end

  def signup_params
    params.require(:signup).permit(:user_id, :event_id, :id)
  end

end
