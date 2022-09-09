class SessionsController < ApplicationController

  # anything dealing with creating or destroying sessions, belongs to the sessions controller 

  # login
  def create
    user = User.find_by_name(params[:name])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id 
      render json: user, status: :ok 
    else 
      render json: {error: "Invalid Credentials"}, status: :unauthorized
    end
  end

  #logout = we need to remove our users session 
  def destroy
    session.delete :user_id
    head :no_content
  end
end
