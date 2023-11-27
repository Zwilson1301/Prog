class AddCatigoriesToDevices < ActiveRecord::Migration[7.0]
  def change
    add_column :devices, :Catigory_id, :string
  end
end
