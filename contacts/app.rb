require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'test.db' }

class Contact < ActiveRecord::Base
end

get '/contacts' do
    @contacts = Contact.all
    erb :contacts
end

get '/contacts/new' do
    erb :new
end

post '/contacts' do
    contact = Contact.new
    contact.firstname = params[:firstname]
    contact.lastname = params[:lastname]
    contact.phone = params[:phone]
    contact.email = params[:email]
    contact.address = params[:address]
    contact.city = params[:city]
    contact.state = params[:state]
    contact.zip = params[:zip]
    contact.save
    redirect '/contacts'
end

get '/contacts/edit' do
    @contact = Contact.find(params[:id])
    erb :edit
end

post '/contacts/edit' do
    contact = Contact.find(params[:id])
    contact.firstname = params[:firstname]
    contact.lastname = params[:lastname]
    contact.phone = params[:phone]
    contact.email = params[:email]
    contact.address = params[:address]
    contact.city = params[:city]
    contact.state = params[:state]
    contact.zip = params[:zip]
    contact.save
    redirect '/contacts'
end

get '/contacts/search' do
    @contact = Contact.where("firstname LIKE ? OR lastname LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    erb :search
end

post '/contacts/search' do
    contact = Contact.where("firstname LIKE ? OR lastname LIKE ?", "%#{params[:search]}", "%#{params[:search]}%")
    contact.firstname = params[:firstname]
    contact.lastname = params[:lastname]
    contact.phone = params[:phone]
    contact.email = params[:email]
    contact.address = params[:address]
    contact.city = params[:city]
    contact.state = params[:state]
    contact.zip = params[:zip]
    contact.save
    redirect '/contacts/search'
end