Rails.application.routes.draw do
  resources :found_animals
  resources :lost_animals
  resources :users
  resources :incidents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
