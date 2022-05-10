class SessionsController < ApplicationController
    skip_before_action :authorize, only: :login

    def login
        user = User.find_by(username:params[:username])
        
        if user&.authenticate(params[:password])
            session[:current_user] = user.id
            session[:login_attempts] = 0
            render json: user, status: :ok
        else
            session[:login_attempts] ||= 0
            session[:login_attempts] += 1
            render json: { error: "Invalid Password and/or Username" },  status: :unauthorized
        end
    end 

    def logout
        session.delete :current_user
    end 
end
