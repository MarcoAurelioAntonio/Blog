require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.new(author: User.new(name: 'John', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Master of the universe'), title: 'Hello', text: 'This is my first post', comments_counter: 2, likes_counter: 3) }

  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'No title should be invalid' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'Title length should be less than 250' do
    subject.title = 'a' * 251
    expect(subject).to_not be_valid
  end

  it 'Comments counter should be greater than or equal to 0' do
    subject.comments_counter = -1
    expect(subject).to_not be_valid
  end

  it 'Likes counter should be greater than or equal to 0' do
    subject.likes_counter = -1
    expect(subject).to_not be_valid
  end

  it 'Method recents_comments should return the last 5 comments' do
    expect(subject.recents_comments).to eq(Comment.order('created_at Desc').limit(5))
  end

  it 'Method update_posts_counter should update the posts_counter of the author' do
    subject.update_posts_counter
    expect(subject.author.posts_counter) == (Post.count('author_id'))
  end
end
