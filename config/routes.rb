Rails.application.routes.draw do
  resources :found_animals
  resources :lost_animals
  resources :users
  resources :incidents, only: [:index, :show, :create, :delete] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/session', to: 'session#new'
  post '/session', to: 'session#create'

  

end
