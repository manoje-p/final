Rails.application.routes.draw do

  resources :users
  resources :guests

  root to: "users#index"

end