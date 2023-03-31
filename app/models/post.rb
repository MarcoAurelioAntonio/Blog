class Post < ApplicationRecord
  # Associations
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  after_save :update_posts_counter

  # Validations
  validates :title, presence: true, length: { maximum: 250 }, format: { with: /\A[a-zA-Z0-9 ]+\z/ }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true }

  def recents_comments
    comments.order('created_at Desc').limit(5)
  end

  def update_posts_counter
    author.update(posts_counter: author.posts.count)
  end
end
