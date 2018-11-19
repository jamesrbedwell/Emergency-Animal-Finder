class LostAnimalsController < ApplicationController
  def index
    if params[:incident]
      @lost_animals = LostAnimal.where("incident_id = ?", params[:incident].to_i)
      @lost_map_data = {
        lat: @lost_animals.pluck(:lat), 
        long: @lost_animals.pluck(:long), 
        location: @lost_animals.pluck(:location_lost),
      }
    else
      @lost_animals = LostAnimal.all
      @lost_map_data = {
        lat: @lost_animals.pluck(:lat), 
        long: @lost_animals.pluck(:long), 
        location: @lost_animals.pluck(:location_lost)
      }
    end
  end
  

  def new
    @incidents = Incident.all
    @health_status = Animal::HEALTH
    @species = Animal::SPECIES
    #@user = session.user
  end

  def create
    @user = User.find_by(id: session[:user_id])
    animal = LostAnimal.new
    animal.species = params[:species]
    animal.date_lost = params[:date_lost]
    animal.location_lost = params[:location_lost]
    animal.lat = Geocoder.coordinates(animal.location_lost).first
    animal.long = Geocoder.coordinates(animal.location_lost).last
    animal.image = params[:image]
    animal.incident_id = params[:incident_id]
    animal.user_id = @user.id
    animal.tags = params[:tags].split(' ')
    animal.tags.unshift(animal.species)
    animal.tags.unshift(animal.location_lost)
    animal.tags = animal.tags.uniq
    animal.reunited = false
    animal.tags.map! do |tag|
      tag.downcase
    end
    if animal.save
      redirect_to(lost_animals_path)
    else
      redirect_to '/login'
    end
  end
  

  def show
    @animal = LostAnimal.find(params[:id])
  end

  def edit
    @animal = LostAnimal.find(params[:id])
    @incidents = Incident.all
    @animal_species = Animal::SPECIES
  end
  
  def update
    animal = LostAnimal.find(params[:id])
    animal.species = params[:species]
    animal.date_lost = params[:date_lost]
    animal.image = params[:image]
    animal.location_lost = params[:location_lost]
    animal.lat = Geocoder.coordinates(animal.location_lost).first
    animal.long = Geocoder.coordinates(animal.location_lost).last
    animal.incident_id = params[:incident_id]
    animal.tags = params[:tags].split(' ')
    animal.tags.unshift(animal.species)
    animal.tags.unshift(animal.location_lost)
    animal.tags = animal.tags.uniq
    animal.tags.map! do |tag|
      tag.downcase
    end
    animal.reunited = params[:reunited]
    if animal.save
      redirect_to(lost_animal_path(animal))
    else
      render :edit
    end
  end
  
end

