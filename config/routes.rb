Rails.application.routes.draw do
  root "incidents#index"

  resources :found_animals, except: [:destroy]
  resources :lost_animals
  resources :users
  
  get '/login', to: 'session#new'
  post 'session', to: 'session#create'
  get 'session/:id', to: 'session#show'
  resources :incidents, only: [:index, :show, :create, :delete] 

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

