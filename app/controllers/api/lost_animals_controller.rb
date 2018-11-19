class Api::LostAnimalsController < ApplicationController
    protect_from_forgery with: :null_session
    def index
        @lost_animals = LostAnimal.order('created_at DESC')
        render json: { status: 'Success', message: 'Animals lost', data: @lost_animals }, status: :ok
    end 

    def show
        lost_animal = FoundAnimal.find(params[:id])
        render json: { status: 'Success', message: 'Animal found', data: lost_animal }, status: :ok
    end 
end 