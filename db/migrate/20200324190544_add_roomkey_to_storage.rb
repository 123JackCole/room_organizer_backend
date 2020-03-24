class AddRoomkeyToStorage < ActiveRecord::Migration[6.0]
  def change
    add_column :storages, :room_id, :integer
  end
end
