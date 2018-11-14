Rails.application.routes.draw do
<<<<<<< HEAD
  root "incidents#index"

  resources :found_animals
=======
  resources :found_animals, except: [:destroy]
>>>>>>> master
  resources :lost_animals
  resources :users
  resources :incidents, only: [:index, :show, :create, :delete] 

  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
