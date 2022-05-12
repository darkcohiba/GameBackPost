Rails.application.routes.draw do
  resources :gamescores
  resources :scores
  resources :games
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #special games route for
  get '/topflap', to: 'games#topflap'
  get '/topsnake', to: 'games#topsnake'

  # Login / Logout Routes
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'
  

    
end
