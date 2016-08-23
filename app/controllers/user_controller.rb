class UserController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    has_attached_file :picture,
    
    def index
    @users = User.all
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
        marker.lat user.latitude
        marker.lng user.longitude
    end
    
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
    
    def location_params
    params.require(:location).permit(:city, :country, :description, :latitude, :longitude, :address)
    end

    def edit
    end

        
end

