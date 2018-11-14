class FoundAnimalsController < ApplicationController

  def index
    @found_animals = FoundAnimal.all
  end

  def show
    @animal = FoundAnimal.find(params[:id])
  end

  def new
    @incidents = Incident.all
    @health_status = FoundAnimal::HEALTH
    @species = FoundAnimal::SPECIES
    #@user = session.user
  end

  def create
    animal = FoundAnimal.new
    animal.species = params[:species]
    animal.date_found = params[:date_found]
    animal.location_found = params[:location_found]
    animal.location_current = params[:location_current]
    animal.image_url = params[:image_url]
    animal.health_status = params[:health_status]
    animal.incident_id = params[:incident_id]
    animal.user_id = 1 #should be session user id
    animal.tags = params[:tags].split(' ')
    animal.claim_status = 'Found'
    if animal.save
      redirect_to(found_animals_path)
    else
      render :new
    end
  end

  def edit
    @animal = FoundAnimal.find(params[:id])
    @incidents = Incident.all
    @animal_species = FoundAnimal::SPECIES
    @health_status = FoundAnimal::HEALTH
  end

  def update
    animal = FoundAnimal.find(params[:id])
    animal.species = params[:species]
    animal.date_found = params[:date_found]
    animal.location_found = params[:location_found]
    animal.location_current = params[:location_current]
    animal.image_url = params[:image_url]
    animal.health_status = params[:health_status]
    animal.incident_id = params[:incident_id]
    animal.tags = params[:tags].split(' ')
    animal.claim_status = params[:claim_status]
    if animal.save
      redirect_to(found_animal_path(animal))
    else
      render :edit
    end
  end


end
