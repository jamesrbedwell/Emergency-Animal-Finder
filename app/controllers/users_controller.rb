class UsersController < ApplicationController

    def new
        render :new
        binding.pry
    end

    def create
        user = User.new
        user.name = params[:name]
        user.email = params[:email]
        user.password = params[:password]
        user.save
        if user.save
            redirect_to '/login'
        else
            render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        @current_user = User.find_by(id: session[:user_id])
        @animals_lost = LostAnimal.where(user_id: session[:user_id])
        @animals_found = FoundAnimal.where(user_id: session[:user_id])

        render :show
    end

    def profile
        @user = User.find_by(id: params[:id])
        render :profile
    end

end
