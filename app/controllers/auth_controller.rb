class AuthController < ApplicationController
    require 'oauth2'
    require 'securerandom'
    require 'json'
    require 'net/http'
    require 'faraday'
    require 'rest-client'

    def login
        #might want to make this asynch

        uri = URI('https://id.twitch.tv/oauth2/token')
        getUri = URI("https://id.twitch.tv/oauth2/userinfo")
 
        
        if(user_params[:accesstoken])
            #this is actually the authorization code returned from twitch API account verification
            req_params = { :client_id => "jro8lw9sohw9cwhqghg0f6dahn2eqv", :client_secret => secretkey, :grant_type => "authorization_code", :redirect_uri=>"http://localhost:3006", :code => user_params[:accesstoken]}

            #get an access token
            resp = Faraday.post(
                "https://id.twitch.tv/oauth2/token",
                URI.encode_www_form(req_params),
                {
                  "Content-Type" => "application/x-www-form-urlencoded",
                  "Accept" => "application/json"
                }
            )

            #parse out the JSON response to get the access token to grab user information
            #then request user data from twitch
            resp=JSON.parse(resp.body)
            accesstoken = resp["access_token"]

            userInfoReq = RestClient.get("https://id.twitch.tv/oauth2/userinfo", {:Authorization => "Bearer " +  accesstoken})
            userInfoReq=JSON.parse(userInfoReq)

            # Check for existing user, create if none
            if (User.find_by(twitch_sub: userInfoReq["sub"]))
                user = User.find_by(twitch_sub: userInfoReq["sub"])
                render json: {user: user}
            else
                # admin set to true for testing
                user = User.create(twitch_sub: userInfoReq["sub"], username: userInfoReq["preferred_username"], administrator: true )
                render json: {user: user}
            end

        end

        

        # user = User.find_by(username: user_params[:username])
        # if user && user.authenticate(user_params[:password])
        #     payload = {user_id: user.id}
        #     token = JWT.encode(payload, secret, 'HS256')
        #     render json: {user: user, token: token}
        # else
        #     render json: {errors: user.errors.full_messages}
        # end
    end

    # def persist
    #     auth = request.headers["Authorization"]
    #     if auth
    #         token = auth.split(" ")[1]
    #         decoded_token = JWT.decode(token, secret, true, { algorithm: 'HS256' })
            
    #         user = User.find(decoded_token[0]['user_id'])
    #         render json: user
    #     end
    # end

    private
    def user_params
        params.permit(:username, :password, :accesstoken)
    end

    def secretkey
      ENV["TWITCH"]
    end

end