class RoomSerializer < ActiveModel::Serializer
  attributes :id, :name, :user, :storages

  def user
    {user_id: self.object.user.id, 
     user_name: self.object.user.name}
  end

  def storages
    # self.object.storages.map do |storage|
    #   {name: storage.name,
    #   size: storage.size,
    #   photo: storage.photo}
    # end

    ActiveModel::SerializableResource.new(self.object.storages,  each_serializer: StorageSerializer)
  end

end
