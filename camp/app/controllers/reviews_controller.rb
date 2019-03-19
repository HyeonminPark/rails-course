class ReviewsController < ApplicationController
    before_action :authenticate_user!
 
    def index
        @reviews = Review.all
    end
    
    def new
        @review = Review.new
        @campsites = Campsite.all
    end
    
    def create
        @campsites = Campsite.all
        review = Review.new
        review.user_id = current_user.id
        review.date = params[:review][:date]
        review.comment = params[:review][:comment]
        review.picture = params[:review][:picture]
        review.save
        redirect_to campsites_path
    end
    
end
