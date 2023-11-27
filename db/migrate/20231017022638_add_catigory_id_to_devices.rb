class AddCatigoryIdToDevices < ActiveRecord::Migration[7.0]
  def change
    add_column :devices, :catigory_id, :string
  end
end
