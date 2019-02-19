class HostsController < ApplicationController
    def new
    end
    
    def create
        host = Host.new
        host.title = params[:title]
        host.name = params[:name]
        host.email = params[:email]
        host.date = params[:date]
        host.location = params[:location]
        host.description = params[:description]
        host.picture = params[:picture]
        host.save
        redirect_to '/hosts'
        
    end
    
    def index
        @hosts = Host.all
    end
    
    def edit
        @host = Host.find(params[:id])
    end
    
    def update
        host = Host.find(params[:id])
        host.title = params[:title]
        host.name = params[:name]
        host.email = params[:email]
        host.date = params[:date]
        host.location = params[:location]
        host.description = params[:description]
        host.picture = params[:picture]
        host.save
        redirect_to '/hosts'
    end
    
    def destroy
        host = Host.find(params[:id])
        host.destroy
        redirect_to '/hosts'
    end
    
    def show
        @host = Host.find(params[:id])
    end
end
