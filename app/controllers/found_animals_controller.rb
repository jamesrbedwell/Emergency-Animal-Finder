class FoundAnimalsController < ApplicationController

  def index
    @found_animals = FoundAnimal.where("incident_id = ?", params[:incident].to_i)
  end

  def show
    @animal = FoundAnimal.find(params[:id])
  end

  def new
    @incidents = Incident.all
    @health_status = Animal::HEALTH
    @species = Animal::SPECIES
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
    animal.claim_status = 'found'
    if animal.save
      redirect_to(found_animals_path)
    else
      render :new
    end
  end

  def edit
    @animal = FoundAnimal.find(params[:id])
    @incidents = Incident.all
    @animal_species = Animal::SPECIES
    @health_status = Animal::HEALTH
    @claim_status = Animal::CLAIM
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
