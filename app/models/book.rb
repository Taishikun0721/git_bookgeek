class Book < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
    
    def like_user(book_id,user_id)
        likes.where(book_id: book_id, user_id: user_id).exists?
    end
end
