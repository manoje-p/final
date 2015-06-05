Rails.application.routes.draw do

  resources :users
  resources :guests
  resources :sessions

 get "/logout", to: "sessions#destroy"
  root to: "sessions#new"

end