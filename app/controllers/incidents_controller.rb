class IncidentsController < ApplicationController

  def index
    @incidents = Incident.all
    @current_user = User.find_by(id: session[:user_id])
  end

  def show
    @incident = Incident.find(params[:id])
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