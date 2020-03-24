class StorageSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :photo, :room, :items

  def room
    {room_id: self.object.room.id, 
     room_name: self.object.room.name}
  end 

  def items
    self.object.items.map do |item|
      {name: item.name,
      category: item.category,
      quantity: item.quantity,
      description: item.description,
      photo: item.photo}
    end 
  end 
  
end
