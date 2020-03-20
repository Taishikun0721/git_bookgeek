class BooksController < ApplicationController
    
    def index
        @books = Book.order("created_at DESC").page(params[:page]).per(8)
    end
    
    def show
        @book = Book.find(params[:id])
    end
    
    def search
        if params[:title].present? 
            @books = Book.where('title like ?',"%#{params[:title]}%").limit(5)
        else
            @books = Book.none
            redirect_to action: :index
            flash[:success] = "検索ワードが見つかりません"
        end
    end
    
end