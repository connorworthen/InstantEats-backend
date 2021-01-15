Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      get :auto_login, to: 'users#auto_login'
      post :login, to: 'users#login'
      post :signup, to: 'users#create'
      resources :users, only: [:index, :show, :update]
      resources :restaurants, only: [:index, :show]
      resources :items, only: [:index, :show]
      resources :menus, only: [:index, :show]
      
      resources :menus do
        resources :items, only: [:index, :show]
      end
    end
  end
  
end