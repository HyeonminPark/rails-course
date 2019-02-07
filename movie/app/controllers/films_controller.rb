class FilmsController < ApplicationController
    
    def index
        @films = Film.all
    end
    
    def new
        @film = Film.new
    end
    
    def create
        film = Film.new
        film.picture = params[:film][:picture]
        film.title = params[:film][:title]
        film.description = params[:film][:description]
        film.save
        redirect_to '/films'
    end
    
    def edit
        @film = Film.find(params[:id])
    end
    
    def update
        film = Film.find(params[:id])
        film.picture = params[:film][:picture]
        film.title = params[:film][:title]
        film.description = params[:film][:description]
        film.save
        redirect_to '/films'
    end
    
    def show
        @film = Film.find(params[:id])
    end

end
