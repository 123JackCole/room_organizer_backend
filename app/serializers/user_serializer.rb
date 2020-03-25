class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :rooms

  def rooms
    self.object.rooms.map do |room|
      {name: room.name}
    end 
  end 

end
