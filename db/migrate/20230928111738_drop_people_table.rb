class DropPeopleTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :people, if_exists: true
  end
end
