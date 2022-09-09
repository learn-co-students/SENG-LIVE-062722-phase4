class TicketsController < ApplicationController
    def create
        ticket = Ticket.create(ticket_params)
        current_user.tickets << ticket 
        render json: ticket, status: :created
    end 
    private

    def ticket_params
        params.permit(:production_id, :user_id, :price)
    end 
end


