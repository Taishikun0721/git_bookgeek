class ReviewsController < ApplicationController
    
    before_action :authenticate_user!
    
    def new
        @book = Book.find(params[:book_id])
        @review = Review.new
    end
    
    def create
        Review.create(review_params)
        redirect_to controller: :books, action: :index
    end
    
    def destroy
        review = Review.find(params[:id])
        review.destroy
        redirect_to controller: :books, action: :index
        flash[:success] =  "レビューは削除しました"
        
    end
    
    def edit
        @book = Book.find(params[:book_id])
        @review = Review.find(params[:id])
    end
    
    def update
        review = Review.find(params[:id])
        review.update(review_params)
        redirect_to controller: :books, action: :index
        flash[:success] = "更新が完了しました"
    end
    
    private 
    
    def review_params
        params.require(:review).permit(:review,:rate).merge(book_id: params[:book_id],user_id: current_user.id)
    end
end
