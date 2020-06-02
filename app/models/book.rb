class Book < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
    
    def like_user(user)
        likes.where(user_id: user).exists?
    end
end
