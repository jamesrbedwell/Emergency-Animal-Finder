class SessionController < ApplicationController

    def new 
        render :new
    end
    
    def create
        @current_user = User.find_by(email: params[:email])
        if @current_user && @current_user.authenticate(params[:password])
                session[:user_id ] = @current_user.id
                redirect_to incidents_path
        else
            redirect_to("/login")
        end
    end


    def destroy
        session[:user_id] = nil         
        redirect_to '/login' 
    end  
end