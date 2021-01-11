Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create, :show, :index]
      get :logged_in, to: 'sessions#is_logged_in?'
      resources :users, only: [:create, :show, :index]
      resources :restaurants
    end
  end
  
end