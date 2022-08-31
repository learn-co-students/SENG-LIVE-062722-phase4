class ProductionsController < ApplicationController
 

    def index
        render json: Production.all, status: :ok
    end

    def show
        production = Production.find(params[:id])
        render json: production, status: :ok
    end

    # POST '/productions'
    def create
        production = Production.create!(production_params)
        render json: production, status: :created

        # this handles when using .create:
        # if production.valid? # this will trigger validations for what its being called on, but its not going to persist to the database
        #     render json: production, status: :created
        # else 
        #     render json: {message: production.errors.full_messages}, status: :unprocessable_entity
        # end 

        # if we use .create!
        # rescue ActiveRecord::RecordInvalid => invalid
        #     render json: {message: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def update
        production = Production.find(params[:id])
        production.update!(production_params)
        render json: production, status: :accepted
    end

    def destroy
        production = Production.find(params[:id])
        production.destroy
        head :no_content
    end

    private

    def production_params
        params.permit(:title, :genre, :description, :budget, :image, :director, :ongoing)
    end



end
