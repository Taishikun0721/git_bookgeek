class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :nickname, presence: true
  validates :nickname, length: { maximum: 10}
  has_one_attached :image
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_books, through: :likes, source: :book
  
  def thumbnail
    return self.image.variant(resize: '50x70')
  end
end
