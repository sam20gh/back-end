Rails.application.routes.draw do
  post '/signin', to: 'users#signin'
  get '/validate', to: "users#validate"
  post '/create', to: "users#create"
  post '/likeairports', to: "my_airports#like"
  get '/myairports', to: 'users#MyAirports'
  post '/createmyairports', to: 'my_airports#create'
  get '/users', to: 'users#show'
  get '/airports', to: 'airports#show'
  resources :my_airports
  resources :routes
  resources :my_flights
  resources :comments
  resources :flights
  resources :airports
  resources :users
  resources :tokens, only: [:create]
end
