Rails.application.routes.draw do
  
  root to: 'main#index'

  resources :coffee_times
  resources :workers
  # resources :coffee_types
  # resources :occupations
end
