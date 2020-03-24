class AddNameToStorages < ActiveRecord::Migration[6.0]
  def change
    add_column :storages, :name, :string
  end
end
