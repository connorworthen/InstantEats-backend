Rails.application.routes.draw do
  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show, :index]
      resources :restaurants
    end
  end
  
end
