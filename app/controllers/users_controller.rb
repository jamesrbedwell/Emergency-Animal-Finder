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
        session[:user_id] = user.id
        if user.save
            redirect_to '/'
        else
            render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        
        render :show
    end

end
