require 'rails_helper'

RSpec.describe 'User index page', type: :feature do
  describe 'User index page process' do
    before(:each) do
      @user = User.create(
        name: 'Gustavo',
        photo: 'https://avatars.githubusercontent.com/u/99001924?v=4', bio: 'I am a software developer',
        posts_counter: 2
      )
      visit users_path
    end

    it 'should show the username of all other users' do
      expect(page).to have_content(@user.name)
    end

    it 'should show the photo of all other users' do
      expect(page.body).to include(@user.photo)
    end

    it 'should show the number of posts of all other users' do
      expect(page.body).to include(@user.posts_counter.to_s)
    end

    it "When I click on a user, should redirected to that user's show page." do
      click_link(@user.name)
      expect(page).to have_current_path(user_path(@user.id))
    end
  end
end
