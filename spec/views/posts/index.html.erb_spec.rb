require 'rails_helper'

RSpec.describe 'Post index page', type: :feature do
  describe 'Post index page process' do
    before(:each) do
      @user = User.create(
        name: 'Gustavo',
        photo: 'https://avatars.githubusercontent.com/u/99001924?v=4',
        bio: 'I am a biology teacher',
        posts_counter: 2
      )
      @user2 = User.create(
        name: 'marco',
        photo: 'https://avatars.githubusercontent.com/u/99001924?v=4',
        bio: 'I am a math teacher',
        posts_counter: 3
      )
      @first_post = Post.create(
        author: @user,
        title: 'My first post',
        text: 'This is my first post',
        comments_counter: 0,
        likes_counter: 0
      )
      Comment.create(
        post: @first_post,
        author: @user2,
        text: 'This the first post comment'
      )

      visit user_posts_path(@user)
    end

    it 'should show the user profile picture' do
      expect(page.body).to include(@user.photo)
    end

    it 'should show the user username' do
      expect(page.body).to have_content(@user.name)
    end

    it 'should show the number of post the user has writen' do
      expect(page.body).to have_content(@user.posts_counter.to_s)
    end

    it "should show a post's title" do
      expect(page.body).to have_content(@first_post.title)
    end

    it "should some of the post's body" do
      expect(page.body).to have_content(@first_post.text)
    end

    it 'should show the first comments on a post' do
      expect(page.body).to have_content('This the first post comment')
    end

    it 'should show how many comments a post has' do
      expect(page.body).to have_content(@first_post.comments_counter.to_s)
    end

    it 'should show how many likes a post has.' do
      expect(page.body).to have_content(@first_post.likes_counter.to_s)
    end

    it 'should not show a pagination button' do
      expect(page.body).not_to have_content('Pagination')
    end
  end
end
