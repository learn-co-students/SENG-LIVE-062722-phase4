class CastMemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :role


  # include the beongs to relationship between production and castmember
  belongs_to :production
end
