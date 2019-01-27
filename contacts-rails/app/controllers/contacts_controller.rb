class ContactsController < ApplicationController
    def index
        @contacts = Contact.all
    end
    
    def new
    end
    
    def edit
        @contact = Contact.find_by(id: params[:id])
    end
    
    def create
        @contact = Contact.new
        @contact.first_name = params[:first_name]
        @contact.last_name = params[:last_name]
        @contact.phone = params[:phone]
        @contact.email = params[:email]
        @contact.address = params[:address]
        @contact.city = params[:city]
        @contact.state = params[:state]
        @contact.zip = params[:zip] 
        @contact.save
        redirect_to '/contacts'
    end
    
    def update
        @contact = Contact.find_by(id: params[:id])
        @contact.first_name = params[:first_name]
        @contact.last_name = params[:last_name]
        @contact.phone = params[:phone]
        @contact.email = params[:email]
        @contact.address = params[:address]
        @contact.city = params[:city]
        @contact.state = params[:state]
        @contact.zip = params[:zip] 
        @contact.save
        redirect_to '/contacts'
    end
    
    def search
        query = "%#{params[:query]}%"
        @contacts = Contact.where('first_name LIKE ? or last_name LIKE ?', query, query)
    end
end
