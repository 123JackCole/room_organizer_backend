class StorageSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :photo, :room

  def room
    {room_id: self.object.room.id, 
     room_name: self.object.room.name}
  end 
  
end
