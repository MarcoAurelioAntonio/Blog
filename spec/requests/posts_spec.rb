require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    subject { get '/users/:user_id/posts' }
    before { subject }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'include placeholder of List posts of a User' do
      expect(response.body).to include('All the posts of one User')
    end

    it 'should render the index template' do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /show' do
    subject { get '/users/:user_id/posts/:id' }
    before { subject }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'include placeholder of a Post of a User' do
      expect(response.body).to include('The Post and all the Comments about it')
    end

    it 'should render the show template' do
      expect(response).to render_template(:show)
    end
  end
end
