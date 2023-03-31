class User < ApplicationRecord
  # Associations
  has_many :posts, dependent: :destroy, foreign_key: 'author_id'
  has_many :comments, dependent: :destroy, foreign_key: 'author_id'
  has_many :likes, dependent: :destroy, foreign_key: 'author_id'

  # Validations
  validates :name, presence: true, length: { maximum: 50 }, format: { with: /\A[a-zA-Z0-9]+\z/ }
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def recents_post
    posts.limit(3).order(created_at: :asc)
  end
end
