class Like < ApplicationRecord
    belongs_to :user
    belongs_to :book, counter_cash: :likes_count
end
