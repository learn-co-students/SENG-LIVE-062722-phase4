class UsersController < ApplicationController


  def show 
    user = User.find(params[:id])
    render json: user, include: ['tickets', 'tickets.production']

    # want to include users tickets and the production each ticket belongs to
  end
end
