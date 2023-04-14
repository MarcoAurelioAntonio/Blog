class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  # Associations
  has_many :posts, dependent: :destroy, foreign_key: 'author_id'
  has_many :comments, dependent: :destroy, foreign_key: 'author_id'
  has_many :likes, dependent: :destroy, foreign_key: 'author_id'

  # Validations
  validates :name, presence: true, length: { maximum: 100 }, format: { with: /\A\s*[a-zA-Z0-9 ]+\s*\z/ }
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def recents_post
    posts.limit(3).order(created_at: :desc) # For the test query Im still using 3 posts, cuz queries are too much
  end

  def admin?
    role == 'admin'
  end
end
