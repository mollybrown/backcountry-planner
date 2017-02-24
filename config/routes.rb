Rails.application.routes.draw do
  root 'home#index'

  get "auth/facebook/callback", to: "sessions#create"
  get "auth/failure", to: "home#index"
  get "signout", to: "sessions#destroy", as: "signout"

end
