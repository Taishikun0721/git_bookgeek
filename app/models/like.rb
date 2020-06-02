class Like < ApplicationRecord
    belongs_to :user
    belongs_to :book, counter_cache: :likes_count
    validates_uniqueness_of :book_id, scope: :user_id
end
