Rails.application.routes.draw do
  root "incidents#index"

  resources :found_animals, except: [:destroy]
  resources :lost_animals
  resources :users
  resources :incidents, only: [:index, :show, :create, :delete] 
  
  get '/login', to: 'session#new'
  post 'session', to: 'session#create'
  delete 'session', to: 'session#destroy'
  delete 'incidents/:id', to: 'incidents#destroy'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

