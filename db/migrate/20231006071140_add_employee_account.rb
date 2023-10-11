class AddEmployeeAccount < ActiveRecord::Migration[7.0]
  def change
    rename_column :emp_accounts, :employees_id, :employee_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
