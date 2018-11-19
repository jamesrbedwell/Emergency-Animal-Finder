module ApplicationHelper
    def logged_in? 
        !!current_user
    end
     
    def current_user 
      User.find_by(id: session[:id])
    end
end
