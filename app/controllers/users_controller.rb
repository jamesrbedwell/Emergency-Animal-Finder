class UsersController < ApplicationController


   

    def new
        render :new
    end

    
    def create
        user = User.new
        user.name = params[:name]
        user.email = params[:email]
        user.password = params[:password]
        user.save
        if user.save
            redirect_to("/session/#{user.id}")
        else
            render :new
        end
    end

end
