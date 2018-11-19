class Api::UsersController < ApplicationController
    protect_from_forgery with: :null_session
    def index
        @user = User.find_by(id: params[:id])
        render json: { status: 'Success', message: 'User found', data: @user }, status: :ok
    end 
end 