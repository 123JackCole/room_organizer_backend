class CreateStorages < ActiveRecord::Migration[6.0]
  def change
    create_table :storages do |t|
      t.string :size
      t.string :photo

      t.timestamps
    end
  end
end
