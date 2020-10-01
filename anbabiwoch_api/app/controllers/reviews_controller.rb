class ReviewsController < ApplicationController

    def index
        reviews= Review.all 
        render json: review
    end

    def show
        review= Review.find(params[:id])
        render json: review
    end

    def create
        user=User.find_by(username:params[:user_id])
        review= Review.create(comment: params[:comment], ratings: params[:ratings], book_id:params[:book_id], user_id: user.id)
        render json: review
    end

    def update
        review= Review.find_by(id: params[:id])
        review.update(ratings:params[:ratings])
        render json: review
    end

    def destroy
        review= Review.find(params[:id])
        review.destroy
    end

    private
    def review_params
        params.permit(:comment, :ratings, :user_id, :book_id)
    end
end
