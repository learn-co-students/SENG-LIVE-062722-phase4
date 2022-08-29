Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


# HTTP verb '/endpoint', to: "controller#action"

# get, post, patch, delete 


# i am creating an endpoint /welcome that is going to render 'hello word" when a request is made

# custom route
get '/welcome', to: "application#welcome"

# REST pattern 

# an endpoint that is going to return all productions 
get '/productions', to: "productions#index"
end
