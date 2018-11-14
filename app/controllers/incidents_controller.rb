class IncidentsController < ApplicationController

  def index
    @incidents = Incident.all 
    @current_user = User.find_by(email: params[:email])
    if @current_user.admin_privilege
      render layout: 'admin'
    end
  end

  def show
    @incident = Incident.find(params[:id])
  end

end