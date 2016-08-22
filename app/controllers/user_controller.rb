class UserController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    
    def index
    @users = User.all
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
        marker.lat user.latitude
        marker.lng user.longitude
    end
    
end
