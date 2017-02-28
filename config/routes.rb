Rails.application.routes.draw do
  root 'home#index'

  resources :trips
  resources :gear_list

  resources :parks, only: [:show]

  get "auth/facebook/callback", to: "sessions#create"
  get "auth/failure", to: "home#index"
  get "signout", to: "sessions#destroy", as: "signout"

  get '/dashboard', to: 'dashboard#index'

end
