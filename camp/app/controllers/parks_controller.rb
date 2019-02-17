class ParksController < ApplicationController
    
    def index
        @parks = Park.all
    end
    
    def new
        @park = Park.new
    end
    
    def create
        park = Park.new
        park.name = params[:park][:name]
        park.description = params[:park][:description]
        park.picture = params[:park][:picture]
        park.state = params[:park][:state]
        park.country = params[:park][:country]
        park.save
        redirect_to parks_path 
    end
    
    def edit
        @park = Park.find(params[:id])
    end
    
    def update
        park = Park.find(params[:id])
        park.name = params[:park][:name]
        park.description = params[:park][:description]
        park.picture = params[:park][:picture]
        park.state = params[:park][:state]
        park.country = params[:park][:country]
        park.save
        redirect_to parks_path
    end
    
    def delete
        park = Park.find(params[:id])
        park.destroy
    end
end
