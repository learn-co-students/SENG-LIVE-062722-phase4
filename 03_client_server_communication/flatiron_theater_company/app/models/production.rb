class Production < ApplicationRecord
  validates :title, :director, presence: true # thsi will require that the title is present when the new production object is being saved to the database! 

  # I need to make sure that a budget exists and is specifically a number and that the budget is at least greater than 0 
  validates :budget, numericality: { greater_than: 0}


  # when are these validations triggered?
  # save
  # create
  # update

# will not trigger validations
# .new

# .valid? : this doesnt send anything to the db but it will check the data is valid 


# how do we know what went wrong 

# a method: .errors call this on the instance that we tried to create
# to read nice error msgs: .errors.full_messages
end
