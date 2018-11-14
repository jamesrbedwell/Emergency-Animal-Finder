class IncidentsController < ApplicationController

  def index
    @incidents = Incident.all 
    users = User.all
    users.each do |user| 
      if user.user_privilege
        render layout: 'admin'
      else
        render :index
      end
  end

  def show
    @incident = Incident.find(params[:id])
  end

  
end