class ExampleMigration < ActiveRecord::Migration[7.0]
  def change
    create_table :distributors do |t|
      t.string :zipcode
    end

    reversible do |direction|
      direction.up do
        # create a distributors view
        execute <<-SQL
          CREATE VIEW distributors_view AS
          SELECT id, zipcode
          FROM distributors;
        SQL
      end
      direction.down do
        execute <<-SQL
          DROP VIEW distributors_view;
        SQL
      end
    end

    add_column :products, :home_page_url, :string
    # rename_column :products, :email, :email_address
  end
end

# class ExampleMigration < ActiveRecord::Migration[7.0]
#   def up
#     create_table :distributors do |t|
#       t.string :zipcode
#     end

#     # create a distributors view
#     execute <<-SQL
#       CREATE VIEW distributors_view AS
#       SELECT id, zipcode
#       FROM distributors;
#     SQL

#     add_column :users, :home_page_url, :string
#     rename_column :users, :email, :email_address
#   end

#   def down
#     rename_column :users, :email_address, :email
#     remove_column :users, :home_page_url

#     execute <<-SQL
#       DROP VIEW distributors_view;
#     SQL

#     drop_table :distributors
#   end
# end

