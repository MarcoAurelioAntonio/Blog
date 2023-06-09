require 'rails_helper'

RSpec.describe 'User posts page o users/show', type: :feature do
  describe 'User show page process' do
    before(:each) do
      @user = User.create(
        name: 'Gustavo',
        photo: 'https://avatars.githubusercontent.com/u/99001924?v=4',
        bio: 'I am a software developer',
        posts_counter: 2
      )

      Post.create(author: @user, title: 'My first post', text: 'This is my first post')
      Post.create(author: @user, title: 'My second post', text: 'This is my second post')
      Post.create(author: @user, title: 'My third post', text: 'This is my third post')
      @last_post = Post.create(author: @user, title: 'My fourth post', text: 'This is my fourth post')

      visit user_path(@user.id)
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

    it 'should sho wthe the users bio' do
      expect(page.body).to have_content(@user.bio)
    end

    it "should show the user's first 3 posts" do
      expect(page.body).to have_content('This is my second post')
      expect(page.body).to have_content('This is my third post')
      expect(page.body).to have_content('This is my fourth post')
    end

    it "should show a button that lets me view all of a user's posts" do
      expect(page.body).to have_content('See All Posts')
    end

    it "When I click to see all posts, it should redirects me to the user's post's index page" do
      click_link('See All Posts')
      expect(page).to have_current_path(user_posts_path(@user))
    end
  end
end
