Rails.application.routes.draw do
  resources :found_animals
  resources :lost_animals
  resources :users
  resources :incidents
  
  get '/login', to: 'session#new'
  get '/session/create', to: 'session#create'
 
end

