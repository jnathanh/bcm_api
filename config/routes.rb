Rails.application.routes.draw do
  resources :measurement_types
  resources :checkpoints
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
