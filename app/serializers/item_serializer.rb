class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :quantity, :description, :photo, :storage

  def storage
    {storage_id: self.object.storage.id, 
     storage_name: self.object.storage.name,
    storage_size: self.object.storage.size,
    storage_photo: self.object.storage.photo}
  end

end
