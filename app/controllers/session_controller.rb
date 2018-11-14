class SessionController < ApplicationController
    def new 
        render :new
    end

    def create
        user = User.new
        user.name = 
        render :create
    end
end