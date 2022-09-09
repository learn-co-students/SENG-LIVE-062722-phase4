class User < ApplicationRecord
    has_many :tickets
    has_many :productions, through: :tickets

    has_secure_password 

    # password=  when this gets invoked and we try to save teh password, bcrypt will look for password_digest column 
    # password_confirmation 
    # authenticate ; will take teh password our user submitted, and compare it to the password stored for the user trying to login 
end
