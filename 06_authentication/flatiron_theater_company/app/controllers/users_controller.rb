class UsersController < ApplicationController
    def show 
        if current_user 
            render json: current_user, status: :ok
        else 
            render json: {error: "No current session stored"}, status: :unauthorized
        end 
    end 

    def create
        # first we need to create our user with the sign up form
        user = User.create!(user_params)
        # we also need to make sure secure our users password
         # bcrypt will handle this piece
        # we need to keep track of our user: sessions
        # sessions is an empty hash, we need to populate the hash with our users information 
        session[:user_id] = user.id # the stage where we log our user in, sessions is going to retain the information weve stored until we explicitly destroy it 
        render json: user, status: :created
    end
    
    private 

    def user_params
        params.permit(:name, :email, :password)
    end 
end
