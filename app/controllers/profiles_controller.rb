class ProfilesController < ApplicationController
    def show
        @current_user = User.find_by(id: session[:user_id])
        @animals_lost = LostAnimal.where(user_id: session[:user_id])
        @animals_found = FoundAnimal.where(user_id: session[:user_id])
        render :show
        binding.pry
    end
end