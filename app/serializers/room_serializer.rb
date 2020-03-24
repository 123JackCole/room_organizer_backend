class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :user

  def user
    {user_id: self.object.user.id, 
     user_name: self.object.user.name}
  end 

end
