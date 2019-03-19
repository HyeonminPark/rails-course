class CampsitesController < ApplicationController
 
  
  def index
    @campsites = Campsite.all
  end
  
  def show
    @campsite = Campsite.find(params[:id])
  end


  def new
    @campsite = Campsite.new
    @parks = Park.all
  end
    
  def create
    @parks = Park.all
    campsite = Campsite.new
    campsite.park_id = params[:campsite][:park_id]
    campsite.name = params[:campsite][:name]
    campsite.location = params[:campsite][:location]
    campsite.picture = params[:campsite][:picture]
    campsite.description = params[:campsite][:description]
    campsite.save
    redirect_to campsites_path
  end

  def edit
    @campsite = Campsite.find(params[:id])
    @parks = Park.all
  end
    
  def update
    @parks = Park.all
    campsite = Campsite.find(params[:id])
    campsite.park_id = params[:campsite][:park_id]
    campsite.name = params[:campsite][:name]
    campsite.location = params[:campsite][:location]
    campsite.picture = params[:campsite][:picture]
    campsite.description = params[:campsite][:description]
    campsite.save
    redirect_to campsites_path
  end
  
  def delete
    campsite = Campsite.find(params[:id])
    campsite.destroy
  end

end
