class RemoveEmployeeIdFromSoftwares < ActiveRecord::Migration[7.0]
  def change
    remove_column :softwares, :employee_id, :string
  end
end
