class BooksController < ApplicationController

    def index
        books= Book.all 
        render json: books
    end

    def show
        book=Book.find(params[:id])
        render json: book
    end

    def create
        book= Book.create(book_params)
        if book.valid?
            render json: book
        else
            render json: {errors: "Inputted Book is incorrect!"}
        end
    end

    def destroy
        book= Book.find(params[:id])
        book.destroy
    end

    

    private

    def book_params
        params.permit(:title, :authors, :publisher, :published_date, :description, :image, :main_category)
    end
end
