class AddCheckcreationToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :check_creation, :string
  end
end
