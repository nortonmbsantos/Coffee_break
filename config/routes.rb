Rails.application.routes.draw do
  
  resources :coffee_times
	root to: 'main#index'

  resources :workers
  resources :coffee_types
  resources :occupations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
