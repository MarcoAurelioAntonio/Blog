class User < ApplicationRecord
  # Associations
  has_many :posts, dependent: :destroy, foreign_key: 'author_id'
  has_many :comments, dependent: :destroy, foreign_key: 'author_id'
  has_many :likes, dependent: :destroy, foreign_key: 'author_id'

  def recents_post
    posts.limit(3).order(created_at: :asc)
  end
end
