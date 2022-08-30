Rails.application.routes.draw do
  # get '/productions', to: "productions#index"
  # get '/productions/:id', to: "productions#show"
  # post '/productions', to: "productions#create"
  # patch '/productions/:id', to: "production#update"

  resources :productions, only: [:index, :create, :update, :show, :destroy]
  
end
