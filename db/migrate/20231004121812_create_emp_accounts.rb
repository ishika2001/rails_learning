class CreateEmpAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :emp_accounts do |t|
      t.belongs_to :employees
      t.string :account_no

      t.timestamps
    end
  end
end
