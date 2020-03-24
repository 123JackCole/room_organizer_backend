class AddStoragekeyToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :storage_id, :integer
  end
end
