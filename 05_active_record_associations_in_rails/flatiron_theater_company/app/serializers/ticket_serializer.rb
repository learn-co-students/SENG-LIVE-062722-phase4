class TicketSerializer < ActiveModel::Serializer
  attributes :price, :production

  # belongs_to :production

  def production 
    {title: self.object.production.title}
  end
end


# users => tickets => production
