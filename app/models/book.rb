class Book < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :likes, dependent: :destroy
    
    def like_user(user_id)
        likes.find_by(user_id: user_id)
    end
end
