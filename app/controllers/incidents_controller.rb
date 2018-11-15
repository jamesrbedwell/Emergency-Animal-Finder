class IncidentsController < ApplicationController

  def index
    @incidents = Incident.all
  
  end

  def show
    @incident = Incident.find(params[:id])
  end

end