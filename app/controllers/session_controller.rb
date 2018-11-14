class SessionController < ApplicationController
    def new 
        render :new
    end
    
    def show
    end
    
    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            redirect_to("/session/#{user.id}")
        else
            redirect_to("/login")
        end
    end

end