class RegistersController < ApplicationController
 before_action :authenticate_user!
 
  def index
    @registers = Register.all
    
  end
  
  def new
    @register = Register.new
  end
  
  def create
    register = Register.new
    register.user_id = params[:register][:user_id]
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
    register.user_id = params[:register][:user_id]
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
  
  def delete
    register = Register.find(params[:id])
    register.destroy
    redirect_to registers_path
  end
  
end
