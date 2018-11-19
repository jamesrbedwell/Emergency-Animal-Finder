class IncidentsController < ApplicationController

  def index
    @incidents = Incident.all
    @current_user = User.find_by(id: session[:user_id])
  end

  def show
    @incident = Incident.find(params[:id])
  end

  def create
    if User.find_by(id: session[:user_id]) == nil
      redirect_to '/login'
    else
      incident = Incident.new
      incident.name = params[:name]
      incident.category = params[:category]
      incident.save
      redirect_to('/incidents')
    end
  end
  
  def destroy
    incident = Incident.find_by(id: params[:id])
    if incident.destroy
      redirect_to('/')
    else
      render :index
    end
  end

end