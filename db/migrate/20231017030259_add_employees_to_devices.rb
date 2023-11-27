class AddEmployeesToDevices < ActiveRecord::Migration[7.0]
  def change
    add_column :devices, :employee_id, :string
  end
end
