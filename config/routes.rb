Rails.application.routes.draw do
  root "incidents#index"

  resources :found_animals, except: [:destroy]
  resources :lost_animals
  resources :users
  resources :incidents
  
  get '/login', to: 'session#new'
  delete 'incidents/:id', to: 'incidents#destroy'
  post 'session', to: 'session#create'
  delete 'session', to: 'session#destroy'
  get 'users/profile/:id', to: 'users#profile'

  namespace 'api' do
    resources :found_animals
    resources :lost_animals
    resources :users
  end 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

