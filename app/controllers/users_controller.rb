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

    def show
        @current_user = User.find_by(id: session[:user_id])
        @animals_lost = LostAnimal.where(user_id: session[:user_id])
        @animals_found = FoundAnimal.where(user_id: session[:user_id])
        render :show
    end

end
