class LikesController < ApplicationController
    def create
        @like = Like.craate(user_id: current_user.id, book_id: params[:book_id])
        @likes = Like.find(book_id: params[:book_id])
    end
    
    def destroy
        @like = Like.find(params[:id])
        @likes = Like.find(user_id: current_user.id, book_id: params[:book_id])
    end
end
