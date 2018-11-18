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

    def create
        found_animal = FoundAnimal.new(found_params)
        if found_animal.save
            render json: { status: 'Success', message: 'Animal data saved', data: found_animal }, status: :ok
        else
            render json: { status: 'Error', message: 'Animal data not saved', data: found_animal.errors }, status: :unprocessable_entity
        end 
    end 

    def delete 
        found_animal = FoundAnimal.find(params[:id])
        found_animal.destroy
        render json: { status: 'Success', message: 'Animal data deleted', data: found_animal }, status: :ok
    end 

    private

    def found_params
        params.requre(:found_animal).permit(:species, :date_found, :location_found, :location_current, :image, :health_status, :tags, :reunited == 0)
    end 

end 
