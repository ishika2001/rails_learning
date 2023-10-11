class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
