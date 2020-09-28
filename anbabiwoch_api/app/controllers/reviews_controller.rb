class ReviewsController < ApplicationController

    def index
        reviews= Review.all 
        render json: review
    end

    def show
        review= Review.find(params[:id])
        render json: review
    end

    def update
        review= Review.find_by(id: params[:id])
        review.update(ratings:params[:ratings])
        render json: review
    end

end
