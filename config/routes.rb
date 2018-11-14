Rails.application.routes.draw do
  resources :found_animals
  resources :lost_animals
  resources :users
  resources :incidents
  
  get '/login', to: 'session#new'
  post 'session', to: 'session#create'
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get 'session/:id', to: 'session#show'
end

