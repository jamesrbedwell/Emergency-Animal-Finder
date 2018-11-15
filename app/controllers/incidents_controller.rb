class IncidentsController < ApplicationController

  def index
    @incidents = Incident.all
<<<<<<< HEAD
  
=======
    if session[:user_id] 
      @current_user = User.find_by(id: session[:user_id])
      if @current_user.admin_privilege
        render layout: 'admin'
      end
    end
>>>>>>> master
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