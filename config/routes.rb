Rails.application.routes.draw do
  resources :users
  resources :searches
  resources :hirings
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
