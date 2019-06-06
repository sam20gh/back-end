Rails.application.routes.draw do
  resources :routes
  resources :my_flights
  resources :comments
  resources :my_airports
  resources :flights
  resources :airports
  get '/users', to: 'users#show'
  resources :users
  resources :tokens, only: [:create]
end
