class ProductionsController < ApplicationController
    before_action :find_production, only: [:show, :update, :destroy]

    # read 

    # reponsile for gathering all of the resource instances 

    # GET '/productions'
    def index 
        render json: Production.all, status: :ok
    end 

    # retrieve a single production object
    # how do i know which production to return 

    # GET '/productions/:id'
    def show 

        # params[:id] gives me the production 

        # find_by search by attribute: return nil if that record does not exist 
        # find just takes in an id value : raise an exception
        # production = Production.find(params[:id])
        render json: @production, status: :ok

        # how do i do use the id to get that production 

        # params hash


        #  one way to handle an error in find_by: 
        # if production 
        #     render json: production, status: :ok
        # else
        #     render json: {message: "This item was not found"}
        # end

        # rescue ActiveRecord::RecordNotFound => error 
        #     render json: {message: error.message}

    end

     # create a new production
    
    # POST '/productions'
    def create 
    
        # how do i access the data that was submitted 
        production = Production.create(production_params)
        render json: production, status: :created

    end

    def update 
        byebug
        # production = Production.find(params[:id])
        @production.update(production_params)
        render json: @production, status: :ok
    end

    def destroy 
        # production = Production.find(params[:id])
        @production.destroy
    end

    private 

    # strong params
    def production_params 
        params.permit(:genre, :description, :ongoing, :director, :budget, :image, :title, :id)
    end

    def find_production
       @production = Production.find(params[:id])
    end




end
