# frozen_string_literal: true

class RegistersController < ApplicationController
  before_action :authenticate_user!

  def index
    @registers = Register.where(user_id: current_user.id)
  end

  def show
    @register = Register.find(params[:id])
    @activities = Activity.all
  end

  def new
    @register = Register.new
    @activities = Activity.all
  end

  def create
    register = Register.new
    register.user_id = current_user.id
    register.first_name = params[:register][:first_name]
    register.last_name = params[:register][:last_name]
    register.phone = params[:register][:phone]
    register.street_address = params[:register][:street_address]
    register.city = params[:register][:city]
    register.state = params[:register][:state]
    register.country = params[:register][:country]
    register.zip = params[:register][:zip]
    register.picture = params[:register][:picture]
    register.save
    redirect_to registers_path
  end

  def edit
    @register = Register.find(params[:id])
  end

  def update
    register = Register.find(params[:id])
    register.user_id = current_user.id
    register.first_name = params[:register][:first_name]
    register.last_name = params[:register][:last_name]
    register.phone = params[:register][:phone]
    register.street_address = params[:register][:street_address]
    register.city = params[:register][:city]
    register.state = params[:register][:state]
    register.country = params[:register][:country]
    register.zip = params[:register][:zip]
    register.picture = params[:register][:picture]
    register.save
    redirect_to registers_path
  end

  def destroy
    register = Register.find(params[:id])
    register.destroy
    redirect_to registers_path
  end

  def add_activity
    @register = Register.find(params[:register_id])
    register_activity = RegisterActivity.new
    register_activity.register_id = params[:register_id]
    register_activity.activity_id = params[:activity_id]
    register_activity.save
    redirect_to registers_path(@register)
  end
end
