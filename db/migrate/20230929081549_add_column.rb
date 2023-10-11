class AddColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :points, :integer
    add_column :people, :games_played, :integer
  end
end
