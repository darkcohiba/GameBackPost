class SessionsController < ApplicationController
    skip_before_action :authorize, only: :login

    def login
        user = User.find_by(params[:username])
        puts "Welcome"
        puts user&.authenticate(params[:password])
        puts params[:password]
        
        if user&.authenticate(params[:password])
            session[:current_user] = user.id
            render json: user, status: :ok
            puts "working?"
        else
            puts "not working"
            render json: { error: "Invalid Password and/or Username" },  status: :unauthorized
        end
    end 

    def logout
        session.delete :current_user
    end 
end
