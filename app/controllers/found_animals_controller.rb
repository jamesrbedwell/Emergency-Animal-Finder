class FoundAnimalsController < ApplicationController

  def index
    @found_animals = FoundAnimal.all
  end

  def new
    animal = FoundAnimal.new
    animal.species = params[:species]
    animal.date_found = params[:date_found]
    animal.date_posted = params[:date_posted]
    animal.location_found = params[:location_found]
    animal.location_current = params[:location_current]
    animal.image_url = params[:image_url]
    animal.health_status = params[:health_status]
    animal.incident_id = params[:incident_id]
    animal.user_id = params[:user_id]
    animal.tags = params[:tags]
    animal.claim_status = 'Found'
    if animal.save
      redirect_to(show_animal(animal))
    else
      render :new
    end

  end

  def create
  end

  def edit
  end

  def update
  end


end
