require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    subject { get '/users' }
    before { subject }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'include placeholder LIST OF USERS' do
      expect(response.body).to include('This a List of the Users')
    end

    it 'should render the index template' do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /show' do
    subject { get '/users/:id' }
    before { subject }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'include placeholder of User and his information and posts list' do
      expect(response.body).to include('Every User data and all his posts')
    end

    it 'should render the show template' do
      expect(response).to render_template(:show)
    end
  end
end
