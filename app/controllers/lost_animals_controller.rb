class LostAnimalsController < ApplicationController
  def index
      @lost_animals = LostAnimal.where("incident_id = ?", params[:incident].to_i)
  end
  
    def show
      @animal = LostAnimal.find(params[:id])
    end
  
    def new
      @incidents = Incident.all
      @health_status = Animal::HEALTH
      @species = Animal::SPECIES
      #@user = session.user
    end
  
    def create
      animal = LostAnimal.new
      animal.species = params[:species]
      animal.date_lost = params[:date_lost]
      animal.location_lost = params[:location_lost]
      animal.image_url = params[:image_url]
      animal.incident_id = params[:incident_id]
      animal.user_id = session[:user_id] #should be session user id
      animal.tags = params[:tags].split(' ')
      animal.tags.unshift(animal.species)
      animal.tags.unshift(animal.location_lost)
      animal.tags = animal.tags.uniq
      if animal.save
        redirect_to(lost_animals_path)
      else
        render :new
      end
    end
  
    def edit
      @animal = LostAnimal.find(params[:id])
      @incidents = Incident.all
      @animal_species = Animal::SPECIES
      @claim_status = Animal::CLAIM
    end
  
    def update
      animal = LostAnimal.find(params[:id])
      animal.species = params[:species]
      animal.date_lost = params[:date_lost]
      animal.image_url = params[:image_url]
      animal.incident_id = params[:incident_id]
      animal.tags = params[:tags].split(' ')
      animal.tags.unshift(animal.species)
      animal.tags.unshift(animal.location_lost)
      animal.tags = animal.tags.uniq
      animal.claim_status = params[:claim_status]
      if animal.save
        redirect_to(lost_animal_path(animal))
      else
        render :edit
      end
    end
    
end


