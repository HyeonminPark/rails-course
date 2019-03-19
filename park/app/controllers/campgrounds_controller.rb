# frozen_string_literal: true

class CampgroundsController < ApplicationController
  def index
    @campgrounds = Campground.all
  end

  def show
    @campground = Campground.find(params[:id])
  end

  def new
    @campground = Campground.new
  end

  def create
    campground = Campground.new
    campground.picture = params[:campground][:picture]
    campground.name = params[:campground][:name]
    campground.country = params[:campground][:country]
    campground.state = params[:campground][:state]
    campground.city = params[:campground][:city]
    campground.address = params[:campground][:address]
    campground.zip = params[:campground][:zip]
    campground.description = params[:campground][:description]
    campground.save
    redirect_to campgrounds_path
  end

  def edit
    @campground = Campground.find(params[:id])
  end

  def update
    campground = Campground.find(params[:id])
    campground.picture = params[:campground][:picture]
    campground.name = params[:campground][:name]
    campground.country = params[:campground][:country]
    campground.state = params[:campground][:state]
    campground.city = params[:campground][:city]
    campground.address = params[:campground][:address]
    campground.zip = params[:campground][:zip]
    campground.description = params[:campground][:description]
    campground.save
    redirect_to campgrounds_path
  end

  def destroy
    campground = Campground.find(params[:id])
    campground.destroy
    redirect_to campgrounds_path
  end
end
