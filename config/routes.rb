Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      get :auto_login, to: 'users#auto_login'
      post :login, to: 'sessions#create'
      post :signup, to: 'users#create'
      # resources :sessions, only: [:create]
      resources :users, only: [:index, :show, :update]
      resources :restaurants, only: [:index, :show]
      resources :items, only: [:index, :show]
    end
  end
  
end