class CreateEmpAccountHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :emp_account_histories do |t|
      t.belongs_to :emp_accounts
      t.integer :ratings

      t.timestamps
    end
  end
end
