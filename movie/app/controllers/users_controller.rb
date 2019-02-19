class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end
    
    def create
        user = User.new
        user.picture = params[:user][:picture]
        user.first_name = params[:user][:first_name]
        user.last_name = params[:user][:last_name]
        user.email = params[:user][:email]
        user.save
        redirect_to '/users'
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        user = User.find(params[:id])
        user.picture = params[:user][:picture]
        user.first_name = params[:user][:first_name]
        user.last_name = params[:user][:last_name]
        user.email = params[:user][:email]
        user.save
        redirect_to '/users'
    end
    
    def show
        @user = User.find(params[:id])
        @films = Film.all
    end
    
    def add_film
        user = User.find(params[:user_id])
        user_film = UserFilm.new
        user_film.user_id = params[:user_id]
        user_film.film_id = params[:film_id]
        user_film.save
        redirect_to '/users'
    end
    
end
