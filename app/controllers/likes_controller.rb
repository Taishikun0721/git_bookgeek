class LikesController < ApplicationController
    def create
        @like = Like.create(user_id: current_user.id, book_id: params[:book_id])
        @likes = Like.where(book_id: params[:book_id])
        @book = Book.find(params[:book_id])
        @like = Like.all
    end
    
    def destroy
        like = Like.find_by(user_id: current_user.id, book_id: params[:book_id])
        like.destroy
        @book = Book.find(params[:book_id])
        @like = Like.all
    end
end
