class RemoveCatigoryIdFromDevices < ActiveRecord::Migration[7.0]
  def change
    remove_column :devices, :Catigory_id, :string
  end
end
