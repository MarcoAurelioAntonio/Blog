require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject { Comment.new(post: Post.new(author: User.new(name: 'John', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Master of the universe'), title: 'Hello', text: 'This is my first post', comments_counter: 2, likes_counter: 3), text: 'This is my first comment') }

  before { subject.save }

  it 'No text should be invalid' do
    subject.text = nil
    expect(subject).to_not be_valid
  end

  it 'Text length should be less than 250' do
    subject.text = 'a' * 251
    expect(subject).to_not be_valid
  end

  it 'Method update_comments_counter should update the comments_counter of the post' do
    subject.update_comments_counter
    expect(subject.post.comments_counter) == (Comment.count('post_id'))
  end
end
