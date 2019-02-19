class GuestsController < ApplicationController
    def new
        @host = Host.all
    end
    
    def create
        @host = Host.all
        guest = Guest.new
        guest.picture = params[:picture]
        guest.name = params[:name]
        guest.email = params[:email]
        guest.host_id = params[:host_id]
        guest.save
        redirect_to '/guests'
    end
    
    def index
        @guests = Guest.all
    end
    
    def edit
        @host =Host.all
        @guest = Guest.find(params[:id])
    end
    
    def update
        @host = Host.all
        guest = Guest.find(params[:id])
        guest.picture = params[:picture]
        guest.name = params[:name]
        guest.email = params[:email]
        guest.host_id = params[:host_id]
        guest.save
        redirect_to '/guests'
    end
    
    def destroy
        guest = Guest.find(params[:id])
        guest.destroy
        redirect_to '/guests'
    end
end
