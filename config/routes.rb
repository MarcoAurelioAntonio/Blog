Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Route for users
  root 'users#index'
  #get 'users', to: 'users#index', as: 'users'
  #get 'users/:id', to: 'users#show', as: 'user'

  # Route for posts
  #get 'users/:user_id/posts', to: 'posts#index', as: 'user_posts'
  #get 'users/:user_id/posts/:id', to: 'posts#show', as: 'user_post'
  
  # Routes for create a new post
  #get 'users/:user_id/posts/new', to: 'posts#new', as: 'new_user_post'
  #post 'users/:user_id/posts', to: 'posts#create'

  resources :users, only: [:index, :show] do 
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resources :comments, only: [:new, :create, :destroy]
      resources :likes, only: [:new, :create]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show] do
        resources :posts, only: [:index, :show] do
          resources :comments, only: [:index, :create]
        end
      end
    end
  end

end

