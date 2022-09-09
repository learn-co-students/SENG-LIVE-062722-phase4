Rails.application.routes.draw do

  resources :tickets, only: [:create]
  resources :users, only: [:show, :create] # POST /users

  resources :productions, only: [ :index, :show, :create, :update, :destroy]

  # custom route 

  # post '/signup', to: "users#create"

  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
end
