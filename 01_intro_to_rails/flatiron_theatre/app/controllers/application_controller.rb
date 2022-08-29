class ApplicationController < ActionController::API

  # our controllers are made up of methods which we refer to them as actions

  # our actins in our controllers are really what handle the requests 

  # user is ging to make a request to an endpoint => config/routes => controller and action designated for that endpoint 

  def welcome 
    render json: "hello world", status: :ok
    #render json is anolagous to: to_json 
  end
end
