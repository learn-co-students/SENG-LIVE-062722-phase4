class ProductionSerializer < ActiveModel::Serializer

  # all the attributes we are going to serialize and send with the response
  attributes :id, :title, :director, :ongoing, :budget, :description, :genre
  has_many :cast_members


  # if ongoing is true, 'currently playing', if false, 'Not in production'

  # self will return the instance of the serializer
  #self.object will return the resource that is being serialized
  def ongoing 
    self.object.ongoing ? 'Currently Playing' : 'Not in Production'
  end
end
