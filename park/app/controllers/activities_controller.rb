# frozen_string_literal: true

class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
    @campgrounds = Campground.all
  end

  def create
    @campgrounds = Campground.all
    activity = Activity.new
    activity.campground_id = params[:activity][:campground_id]
    activity.picture = params[:activity][:picture]
    activity.name = params[:activity][:name]
    activity.instrutor = params[:activity][:instrutor]
    activity.time = params[:activity][:time]
    activity.price = params[:activity][:price]
    activity.description = params[:activity][:description]
    activity.save
    redirect_to campgrounds_path
  end

  def edit
    @campgrounds = Campground.all
    @activity = Activity.find(params[:id])
  end

  def update
    @campgrounds = Campground.all
    activity = Activity.find(params[:id])
    activity.campground_id = params[:activity][:campground_id]
    activity.picture = params[:activity][:picture]
    activity.name = params[:activity][:name]
    activity.instrutor = params[:activity][:instrutor]
    activity.time = params[:activity][:time]
    activity.price = params[:activity][:price]
    activity.description = params[:activity][:description]
    activity.save
    redirect_to campgrounds_path
  end

  def destroy
    activity = Activity.find(params[:id])
    activity.destroy
    redirect_to campgrounds_path
  end
end
