class ProductionsController < ApplicationController


  # GET '/productions'
  def index 

    # # i want to get all productions 
    # productions = Production.all

    # # send that data out as a JSON response
    # render json: productions, status: :ok

    render json: Production.all, status: :ok
  end
end
