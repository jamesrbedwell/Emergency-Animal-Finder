class Incident < ApplicationRecord

  def index
    @incidents = Incident.all
  end

  def new
    # render :new (this is not mandatory, it's implied)
  end


end
