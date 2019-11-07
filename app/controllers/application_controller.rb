class ApplicationController < ActionController::API

    private

    def secretkey
      ENV["TWITCH"]
    end
    
end
