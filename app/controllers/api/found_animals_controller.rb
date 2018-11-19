class Api::FoundAnimalsController < ApplicationController
    protect_from_forgery with: :null_session
    def index
        @found_animals = FoundAnimal.order('created_at DESC')
        render json: { status: 'Success', message: 'Animals found', data: @found_animals }, status: :ok
    end 

    def show
        found_animal = FoundAnimal.find(params[:id])
        render json: { status: 'Success', message: 'Animal found', data: found_animal }, status: :ok
    end 
end 
